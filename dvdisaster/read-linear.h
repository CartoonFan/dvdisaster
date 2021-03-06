/*  dvdisaster: Additional error correction for optical media.
 *  Copyright (C) 2004-2012 Carsten Gnoerlich.
 *
 *  Email: carsten@dvdisaster.org  -or-  cgnoerlich@fsfe.org
 *  Project homepage: http://www.dvdisaster.org
 *
 *  This file is part of dvdisaster.
 *
 *  dvdisaster is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  dvdisaster is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with dvdisaster. If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef READ_LINEAR_H
#define READ_LINEAR_H

#include "rs02-includes.h"

/*
 * Local data package used during reading 
 */

#define READ_BUFFERS 128   /* equals 4MB of buffer space */

typedef struct
{  LargeFile *readerImage;  /* we need two file handles to prevent LargeSeek() */
   LargeFile *writerImage;  /* race conditions between the reader and writer */
   Image *image;
   struct _DeviceHandle *dh;
   EccInfo *ei;
   GThread *worker;
   Method *eccMethod;           /* Method for ecc data */
   char eccMethodName[5];       /* FourCC code of error correction method */
   int eccFile;                 /* TRUE if ecc files are used */
   struct MD5Context md5ctxt;   /* Complete image checksum (RS01) */
   struct MD5Context dataCtxt;  /* Image section checksums (RS02) */
   struct MD5Context crcCtxt;   /* Image section checksums (RS02) */
   struct MD5Context eccCtxt;   /* Ecc layer checksum (RS02) */
   struct MD5Context metaCtxt;  /* Ecc meta checksum (RS02) */
   int doMD5sums;               /* whether we should calculate the above */
   int savedSectorSkip;
   CrcBuf *crcBuf;              /* CRC sums retrieved from above */
   RS02Layout *lay;             /* needed for processing RS02 images */
   unsigned char *fingerprint;  /* needed for missing sector generation */
   char *volumeLabel;

   /* Data exchange between reader and worker */

   struct _AlignedBuffer *alignedBuf[READ_BUFFERS];
   gint64 bufferedSector[READ_BUFFERS];
   int nSectors[READ_BUFFERS];
   int bufState[READ_BUFFERS];
   GMutex *mutex;
   GCond *canRead, *canWrite;
   int readPtr,writePtr;
   char *workerError;

   /* for usage within the reader */

   gint64 sectors;                   /* medium capacity (total number of sectors) */
   gint64 dataSectors;               /* crc protected data sectors (RS02) */
   gint64 firstSector, lastSector;   /* reading range */

   gint64 readPos;                   /* current sector reading position */
   Bitmap *readMap;                  /* map of already read sectors */

   gint64 readMarker;
   int rereading;                    /* TRUE if working on existing image */
   char *msg;
   GTimer *speedTimer,*readTimer;
   int unreportedError;
   int earlyTermination;
   int scanMode;
   int lastPercent;
   int firstSpeedValue;
   double speed,lastSpeed;
   gint64 readOK, lastReadOK;
   int previousReadErrors;
   int previousCRCErrors;
   gint64 deadWritten;
   gint64 lastErrorsPrinted;
   int pass;
   int maxC2;                       /* max C2 error since last output */

   /* for drawing the curve and spiral */

   gint lastCopied;
   gint lastSegment;
   gint lastPlotted;
   gint lastPlottedY;
   gint activeRenderers;

} read_closure;

#endif /* READ_LINEAR_H */

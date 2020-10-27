as yet unclassified
open: annotator file: chatFile
| f logfile linkingFile |

author := annotator.
annotationFile := chatFile.
f := self chatFile: annotationFile.
logfile := self loggingFile: annotationFile author: author.
linkingFile := self linkingFile: annotationFile author: author.

self dataManager filePath: f; loadMessages.
self dataManager loadLinksFrom: linkingFile.
self app openOnMessageType: LAJkkDataManager file: f from: 980 to: 1100.

self logger path: logfile.
self app instance eventLogger: logger.
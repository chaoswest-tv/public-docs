# Streaming Cluster Overview

We develop and operate a (for lack of a better title) "Streaming Cluster".
The aim for this cluster to provide tools that help with many tasks for streaming.

The idea is to have a bunch of little, composable utilities.[^1]

Our vision:

-   [x] Redundant RTMP ingest
-   [x] RTMP relaying/restreaming
-   [ ] RTMP transcoding
-   [ ] RTMP videomixing with live manipulation
-   [ ] HLS publishing with multi-variant transcoding
-   [ ] Autoscaling HLS CDN
-   [ ] Redundant SRT ingest
-   [ ] Low-Latency viewer participation

All components for this cluster are opensource and available for anyone - to use,
learn from, and contribute!

[^1]: Think unix philosophy.

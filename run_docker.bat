@echo off
docker pull conradmugabe/simon-validators
docker run -d -p 8001:8001 conradmugabe/simon-validators

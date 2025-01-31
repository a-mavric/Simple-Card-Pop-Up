@echo off
:start
set /P card="Please enter your card name: "
IF EXIST "%card%.png" (
  copy ".\%card%.png" "_preview.png"
  ECHO Card found!
  goto start
) ELSE IF EXIST "%card%" (
  copy ".\%card%" "_preview.png"
  ECHO Card found!
  goto start
) ELSE (
  ECHO Card not found! Please try again.
  goto start
)


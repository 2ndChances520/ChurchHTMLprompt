@echo off
setlocal EnableDelayedExpansion
title Church Website Builder

echo ==========================================================
echo            CHURCH WEBSITE BUILDER - TeamLegacy
echo ==========================================================
echo.
echo This tool will generate a simple church website (index.html)
echo in a folder called ChurchWebsite.
echo.
pause

:: Create output folder
if not exist "ChurchWebsite" mkdir "ChurchWebsite"

echo.
echo ===============================
echo CHURCH INFORMATION
echo ===============================
set /p churchName=Church Name: 
set /p tagline=Tagline or Mission Statement: 
set /p denomination=Denomination (leave blank if none): 
set /p address=Church Address: 
set /p cityStateZip=City / State / Zip: 
set /p phone=Phone Number: 
set /p email=Email Address: 
set /p website=Website (optional): 

echo.
echo ===============================
echo SERVICE TIMES
echo ===============================
set /p sundayMorning=Sunday Morning Service: 
set /p sundayEvening=Sunday Evening Service: 
set /p wednesdayStudy=Wednesday Bible Study: 
set /p otherGatherings=Other Weekly Gatherings: 

echo.
echo ===============================
echo PASTOR / STAFF
echo ===============================
set /p pastorName=Lead Pastor Name: 
set /p pastorBio=Short Bio: 
set /p additionalStaff=Additional Staff (optional): 

echo.
echo ===============================
echo MINISTRIES
echo ===============================
set /p youthMinistry=Youth Ministry: 
set /p childrenMinistry=Children's Ministry: 
set /p mensMinistry=Men's Ministry: 
set /p womensMinistry=Women's Ministry: 
set /p outreachMinistry=Community Outreach: 
set /p otherMinistries=Other Ministries: 

echo.
echo ===============================
echo UPCOMING EVENTS
echo ===============================
set /p event1=Event 1: 
set /p event2=Event 2: 
set /p event3=Event 3: 

echo.
echo ===============================
echo SERMONS
echo ===============================
set /p sermonTitle=Latest Sermon Title: 
set /p sermonDescription=Sermon Description: 
set /p sermonLink=Video or Audio Link (optional): 

echo.
echo ===============================
echo GIVING
echo ===============================
set /p givingLink=Online Giving Link: 
set /p givingMessage=Short Giving Message: 

echo.
echo ===============================
echo VISIT US SECTION
echo ===============================
set /p visitMessage=Friendly message for first-time visitors: 

echo.
echo ===============================
echo SOCIAL MEDIA
echo ===============================
set /p facebook=Facebook: 
set /p youtube=YouTube: 
set /p instagram=Instagram: 

echo.
echo Building website...

(
echo ^<!DOCTYPE html^>
echo ^<html lang="en"^>
echo ^<head^>
echo   ^<meta charset="UTF-8" /^>
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0" /^>
echo   ^<title^>!churchName!^</title^>
echo   ^<style^>
echo     * { box-sizing: border-box; margin: 0; padding: 0; }
echo     body {
echo       font-family: Arial, sans-serif;
echo       background: #f7f9fc;
echo       color: #222;
echo       line-height: 1.6;
echo     }
echo     header {
echo       background: linear-gradient(135deg, #1d3557, #457b9d);
echo       color: white;
echo       padding: 60px 20px;
echo       text-align: center;
echo     }
echo     header h1 {
echo       font-size: 3rem;
echo       margin-bottom: 10px;
echo     }
echo     header p {
echo       font-size: 1.2rem;
echo       max-width: 800px;
echo       margin: auto;
echo     }
echo     nav {
echo       background: #0f172a;
echo       padding: 12px;
echo       text-align: center;
echo       position: sticky;
echo       top: 0;
echo       z-index: 1000;
echo     }
echo     nav a {
echo       color: white;
echo       text-decoration: none;
echo       margin: 0 15px;
echo       font-weight: bold;
echo     }
echo     nav a:hover {
echo       color: #f1c40f;
echo     }
echo     .container {
echo       max-width: 1100px;
echo       margin: 30px auto;
echo       padding: 0 20px;
echo     }
echo     section {
echo       background: white;
echo       margin-bottom: 25px;
echo       padding: 25px;
echo       border-radius: 14px;
echo       box-shadow: 0 8px 20px rgba(0,0,0,0.08);
echo     }
echo     h2 {
echo       color: #1d3557;
echo       margin-bottom: 15px;
echo       border-bottom: 3px solid #e5e7eb;
echo       padding-bottom: 8px;
echo     }
echo     .grid {
echo       display: grid;
echo       grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
echo       gap: 20px;
echo     }
echo     .card {
echo       background: #f8fafc;
echo       padding: 18px;
echo       border-radius: 12px;
echo       border-left: 5px solid #457b9d;
echo     }
echo     .button {
echo       display: inline-block;
echo       background: #1d3557;
echo       color: white;
echo       padding: 12px 20px;
echo       border-radius: 10px;
echo       text-decoration: none;
echo       margin-top: 10px;
echo       font-weight: bold;
echo     }
echo     .button:hover {
echo       background: #457b9d;
echo     }
echo     footer {
echo       text-align: center;
echo       padding: 30px 20px;
echo       background: #0f172a;
echo       color: white;
echo       margin-top: 30px;
echo     }
echo     ul {
echo       padding-left: 20px;
echo     }
echo     iframe {
echo       width: 100%%;
echo       height: 300px;
echo       border: 0;
echo       border-radius: 12px;
echo       margin-top: 15px;
echo     }
echo   ^</style^>
echo ^</head^>
echo ^<body^>

echo ^<header^>
echo   ^<h1^>!churchName!^</h1^>
echo   ^<p^>!tagline!^</p^>
echo ^</header^>

echo ^<nav^>
echo   ^<a href="#about"^>About^</a^>
echo   ^<a href="#services"^>Services^</a^>
echo   ^<a href="#ministries"^>Ministries^</a^>
echo   ^<a href="#events"^>Events^</a^>
echo   ^<a href="#sermons"^>Sermons^</a^>
echo   ^<a href="#giving"^>Giving^</a^>
echo   ^<a href="#visit"^>Visit Us^</a^>
echo   ^<a href="#contact"^>Contact^</a^>
echo ^</nav^>

echo ^<div class="container"^>

echo ^<section id="about"^>
echo   ^<h2^>About Our Church^</h2^>
echo   ^<p^><strong^>Denomination:^</strong^> !denomination!^</p^>
echo   ^<p^><strong^>Lead Pastor:^</strong^> !pastorName!^</p^>
echo   ^<p^>!pastorBio!^</p^>
echo   ^<p^><strong^>Additional Staff:^</strong^> !additionalStaff!^</p^>
echo ^</section^>

echo ^<section id="services"^>
echo   ^<h2^>Service Times^</h2^>
echo   ^<div class="grid"^>
echo     ^<div class="card"^><strong^>Sunday Morning^</strong^><br^>!sundayMorning!^</div^>
echo     ^<div class="card"^><strong^>Sunday Evening^</strong^><br^>!sundayEvening!^</div^>
echo     ^<div class="card"^><strong^>Wednesday Bible Study^</strong^><br^>!wednesdayStudy!^</div^>
echo     ^<div class="card"^><strong^>Other Gatherings^</strong^><br^>!otherGatherings!^</div^>
echo   ^</div^>
echo ^</section^>

echo ^<section id="ministries"^>
echo   ^<h2^>Ministries^</h2^>
echo   ^<div class="grid"^>
echo     ^<div class="card"^><strong^>Youth Ministry^</strong^><br^>!youthMinistry!^</div^>
echo     ^<div class="card"^><strong^>Children's Ministry^</strong^><br^>!childrenMinistry!^</div^>
echo     ^<div class="card"^><strong^>Men's Ministry^</strong^><br^>!mensMinistry!^</div^>
echo     ^<div class="card"^><strong^>Women's Ministry^</strong^><br^>!womensMinistry!^</div^>
echo     ^<div class="card"^><strong^>Community Outreach^</strong^><br^>!outreachMinistry!^</div^>
echo     ^<div class="card"^><strong^>Other Ministries^</strong^><br^>!otherMinistries!^</div^>
echo   ^</div^>
echo ^</section^>

echo ^<section id="events"^>
echo   ^<h2^>Upcoming Events^</h2^>
echo   ^<ul^>
echo     ^<li^>!event1!^</li^>
echo     ^<li^>!event2!^</li^>
echo     ^<li^>!event3!^</li^>
echo   ^</ul^>
echo ^</section^>

echo ^<section id="sermons"^>
echo   ^<h2^>Latest Sermon^</h2^>
echo   ^<p^><strong^>!sermonTitle!^</strong^></p^>
echo   ^<p^>!sermonDescription!^</p^>
echo   ^<p^><a class="button" href="!sermonLink!" target="_blank"^>Watch / Listen^</a^></p^>
echo ^</section^>

echo ^<section id="giving"^>
echo   ^<h2^>Online Giving^</h2^>
echo   ^<p^>!givingMessage!^</p^>
echo   ^<a class="button" href="!givingLink!" target="_blank"^>Give Online^</a^>
echo ^</section^>

echo ^<section id="visit"^>
echo   ^<h2^>Visit Us^</h2^>
echo   ^<p^>!visitMessage!^</p^>
echo   ^<p^><strong^>Address:^</strong^> !address!, !cityStateZip!^</p^>
echo   ^<iframe src="https://www.google.com/maps?q=!address! !cityStateZip!&output=embed"^>^</iframe^>
echo ^</section^>

echo ^<section id="contact"^>
echo   ^<h2^>Contact Us^</h2^>
echo   ^<p^><strong^>Phone:^</strong^> !phone!^</p^>
echo   ^<p^><strong^>Email:^</strong^> ^<a href="mailto:!email!"^>!email!^</a^></p^>
echo   ^<p^><strong^>Website:^</strong^> ^<a href="!website!" target="_blank"^>!website!^</a^></p^>
echo   ^<p^><strong^>Facebook:^</strong^> ^<a href="!facebook!" target="_blank"^>Facebook^</a^></p^>
echo   ^<p^><strong^>YouTube:^</strong^> ^<a href="!youtube!" target="_blank"^>YouTube^</a^></p^>
echo   ^<p^><strong^>Instagram:^</strong^> ^<a href="!instagram!" target="_blank"^>Instagram^</a^></p^>
echo ^</section^>

echo ^</div^>

echo ^<footer^>
echo   ^<p^>^&copy; 2026 !churchName! - All Rights Reserved.^</p^>
echo ^</footer^>

echo ^</body^>
echo ^</html^>
) > "ChurchWebsite\index.html"

echo.
echo ==========================================================
echo Website created successfully!
echo File saved to:
echo ChurchWebsite\index.html
echo ==========================================================
echo.

choice /c YO /m "Would you like to open the website now?"
if errorlevel 2 goto end
if errorlevel 1 start "" "ChurchWebsite\index.html"

:end
echo.
echo Done.
pause
REM Sync netcore algos
robocopy algos\netcore\StockPricesTest\bin\Debug\netcoreapp3.1 algonia-bundle-win64\resources\app\AlgoniaEngine\libs\algonia\cs /E
REM Sync python algos
robocopy algos\py algonia-bundle-win64\resources\app\AlgoniaEngine\libs\algonia\py /E
REM Sync html/js algos
robocopy algos\html algonia-bundle-win64\resources\app\AlgoniaEngine\libs\algonia\html /E
if [ ! -d algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia ] ; then
  mkdir algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia
fi

if [ ! -d algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs ] ; then
  mkdir algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs
fi

# netcore algos sync
cp -r algos/netcore/StockPricesTest/bin/Debug/netcoreapp3.1/*.* algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs

# python algos sync
cp -r algos/py algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia

# html algos sync
cp -r algos/html algonia-bundle-macos/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia



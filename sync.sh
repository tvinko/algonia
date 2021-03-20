if [ ! -d /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia ] ; then
  mkdir /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia
fi

if [ ! -d /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs ] ; then
  mkdir /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs
fi

# netcore algos sync
cp -r algos/netcore/StockPricesTest/bin/Debug/netcoreapp3.1/*.* /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia/cs

# python algos sync
cp -r algos/py /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia

# html algos sync
cp -r algos/html /Applications/algonia-designer.app/Contents/Resources/app/AlgoniaEngine/libs/algonia



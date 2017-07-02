echo 'Hello from travis..'
pwd
echo "Running Python 3 Unit Tests"
cd unit3
python3 unit.py
E3=$?
echo "Error 3" $E3
rm cover*jpg

echo "Running Python 2 Unit Tests"
cd ../unit2
python3 unit.py
E2=$?
echo "Error 2" $E2
rm cover*jpg

EE=0
if [ "$E2" -ne "0" ]; then
    echo "Python 2 had errors"
    EE=1
fi
if [ "$E3" -ne "0" ]; then
    echo "Python 3 had errors"
    EE=1
fi
exit $EE

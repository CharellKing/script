root="/home/ck/TimePass"
cd ${root}/src/shm
source=`find . -name "*.cpp" -o -name "*.h"`

for path in ${source[@]}
do
    cpplint ${path}
done

cd ${root}/src/global
source=`find . -name "*.cpp" -o -name "*.h"`

for path in ${source[@]}
do
    cpplint ${path}
done

cd ${root}/example
source=`find . -name "main.cpp"`
for path in ${source[@]}
do
    cpplint ${path}
done

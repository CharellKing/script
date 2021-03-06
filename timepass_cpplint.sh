#TimePass's project root
root="/home/ck/TimePass/"
cd ${root}/src/shm


#TimePass's source relative path
paths=("src/shm" "src/global")
for path in ${paths[@]}
do
    sources=`find "${root}${path}" -name "*.cpp" -o -name "*.h"`
    for source in ${sources[@]}
    do
        cpplint ${source}
    done
done

#example's main.cpp
cd ${root}/example
source=`find . -name "main.cpp"`
for path in ${source[@]}
do
    cpplint ${path}
done

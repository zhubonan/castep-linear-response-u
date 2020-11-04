# Perform the initial calculation
echo "Performing initial singlepoint calculation"
mkdir base_calc
cp MnO.cell MnO.param base_calc
cd base_calc
rm MnO.castep
sed -i "s/Mn 1 d:.*$/Mn 1 d:0/g" MnO.cell
sed -i "s/^.*reuse.*$//g" MnO.param
mpirun -np 2 castep.mpi MnO
cd ../
cp base_calc/MnO.check base.check

# Perform response calculation

echo "Performing response calculations"
for alpha in -0.40 -0.32 -0.24 -0.16 -0.08 0.08 0.16 0.24 0.32 0.40; do

echo Running for alph= $alpha

sed -i "s/Mn 1 d:.*$/Mn 1 d:$alpha/g" MnO.cell
rm MnO.castep
mpirun -np 2 castep.mpi MnO
mkdir alpha_${alpha}
cp MnO.castep alpha_${alpha}

done

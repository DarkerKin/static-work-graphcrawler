#!/bin/bash
#SBATCH --job-name=particle_sim
#SBATCH --partition=Centaurus
#SBATCH --time=20:00:00
#SBATCH --output=slurm-%j.out
#SBATCH --error=slurm-%j.err
#SBATCH --mem=8G

 g++ -std=c++17 -I$HOME/rapidjson/include level_client.cpp -lcurl -o graph_crawler

 ./graph_crawler "Tom Hanks" 3 > test1.txt

  ./graph_crawler "Leonardo DiCaprio" 3 > test2.txt

   ./graph_crawler "Brad Pitt" 3 > test3.txt

    ./graph_crawler "Tom Hanks" 1 > test4.txt
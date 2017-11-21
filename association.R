# association rules in R
# R association analysis depends on Market Basket Analysis

# association is an unspervised learning technique means there is no target for us to shoot out


# the main idea here is to find the interesting relationship b/w the items
dataset=read.csv("groceries.csv")

summary(dataset)


# instead of bigdata we will use sparse matrix in r-- the reason is in bigdata memory will be a very big issue
# and in r using sparse matrix memory management can be done in a very good way

# the reason r manages it in more better way using sparse matrix is--if there is incase no entry in any particular cell--it doesnot enter anything there instead of 0

# and this saves a lot of memory space

# sparse matrix is memory efficient and gives some structural format to our unstructured data


# to deal with transactional kind of data--using sparse matrix we need to use --"arules" package

install.packages("arules")

# load the package

require(arules)

# to load the data directly form package use the below command
data(package="arules")
data(Groceries)
groc = read.transactions("groceries.csv",sep = ",")
groc

summary(groc)

# density here means total no. of non empty cells in this sparse matrix--total no. of items purchased out of the total available items

# to calculate total no. of cells in the matrix--9835*169=1662115

# to find out total no. of non empty cells in the matrix--9835*169*.02609=43364.58

# the sizes displaying with how many items how many transactions happend--for ex. for 1 item--2159 trans., for 2 its 1643
 
   groc[1:4,]


dataset= read.csv('dataset.csv')
head(dataset)
summary(dataset)
install.packages("ggplot2")

  

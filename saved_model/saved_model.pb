??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
z
left/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameleft/kernel
s
left/kernel/Read/ReadVariableOpReadVariableOpleft/kernel*&
_output_shapes
:@*
dtype0
j
	left/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	left/bias
c
left/bias/Read/ReadVariableOpReadVariableOp	left/bias*
_output_shapes
:@*
dtype0
~
right1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameright1/kernel
w
!right1/kernel/Read/ReadVariableOpReadVariableOpright1/kernel*&
_output_shapes
:@*
dtype0
n
right1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameright1/bias
g
right1/bias/Read/ReadVariableOpReadVariableOpright1/bias*
_output_shapes
:@*
dtype0
}
left1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*
shared_nameleft1/kernel
v
 left1/kernel/Read/ReadVariableOpReadVariableOpleft1/kernel*'
_output_shapes
:@?*
dtype0
m

left1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
left1/bias
f
left1/bias/Read/ReadVariableOpReadVariableOp
left1/bias*
_output_shapes	
:?*
dtype0
}
right/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*
shared_nameright/kernel
v
 right/kernel/Read/ReadVariableOpReadVariableOpright/kernel*'
_output_shapes
:@?*
dtype0
m

right/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
right/bias
f
right/bias/Read/ReadVariableOpReadVariableOp
right/bias*
_output_shapes	
:?*
dtype0
{
mid1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*
shared_namemid1/kernel
t
mid1/kernel/Read/ReadVariableOpReadVariableOpmid1/kernel*'
_output_shapes
:?@*
dtype0
j
	mid1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	mid1/bias
c
mid1/bias/Read/ReadVariableOpReadVariableOp	mid1/bias*
_output_shapes
:@*
dtype0
|
dense_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? * 
shared_namedense_25/kernel
u
#dense_25/kernel/Read/ReadVariableOpReadVariableOpdense_25/kernel* 
_output_shapes
:
?? *
dtype0
r
dense_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_25/bias
k
!dense_25/bias/Read/ReadVariableOpReadVariableOpdense_25/bias*
_output_shapes
: *
dtype0
x
output1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_nameoutput1/kernel
q
"output1/kernel/Read/ReadVariableOpReadVariableOpoutput1/kernel*
_output_shapes

: *
dtype0
p
output1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput1/bias
i
 output1/bias/Read/ReadVariableOpReadVariableOpoutput1/bias*
_output_shapes
:*
dtype0
?
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:@ *
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
: *
dtype0
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?8 * 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	?8 *
dtype0
r
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
: *
dtype0
|
output1/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameoutput1/kernel_1
u
$output1/kernel_1/Read/ReadVariableOpReadVariableOpoutput1/kernel_1*
_output_shapes

: *
dtype0
t
output1/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput1/bias_1
m
"output1/bias_1/Read/ReadVariableOpReadVariableOpoutput1/bias_1*
_output_shapes
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
?
Adam/left/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/left/kernel/m
?
&Adam/left/kernel/m/Read/ReadVariableOpReadVariableOpAdam/left/kernel/m*&
_output_shapes
:@*
dtype0
x
Adam/left/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/left/bias/m
q
$Adam/left/bias/m/Read/ReadVariableOpReadVariableOpAdam/left/bias/m*
_output_shapes
:@*
dtype0
?
Adam/right1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/right1/kernel/m
?
(Adam/right1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/right1/kernel/m*&
_output_shapes
:@*
dtype0
|
Adam/right1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/right1/bias/m
u
&Adam/right1/bias/m/Read/ReadVariableOpReadVariableOpAdam/right1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/left1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameAdam/left1/kernel/m
?
'Adam/left1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/left1/kernel/m*'
_output_shapes
:@?*
dtype0
{
Adam/left1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/left1/bias/m
t
%Adam/left1/bias/m/Read/ReadVariableOpReadVariableOpAdam/left1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/right/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameAdam/right/kernel/m
?
'Adam/right/kernel/m/Read/ReadVariableOpReadVariableOpAdam/right/kernel/m*'
_output_shapes
:@?*
dtype0
{
Adam/right/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/right/bias/m
t
%Adam/right/bias/m/Read/ReadVariableOpReadVariableOpAdam/right/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/mid1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*#
shared_nameAdam/mid1/kernel/m
?
&Adam/mid1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mid1/kernel/m*'
_output_shapes
:?@*
dtype0
x
Adam/mid1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/mid1/bias/m
q
$Adam/mid1/bias/m/Read/ReadVariableOpReadVariableOpAdam/mid1/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *'
shared_nameAdam/dense_25/kernel/m
?
*Adam/dense_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/m* 
_output_shapes
:
?? *
dtype0
?
Adam/dense_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_25/bias/m
y
(Adam/dense_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/m*
_output_shapes
: *
dtype0
?
Adam/output1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/output1/kernel/m

)Adam/output1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output1/kernel/m*
_output_shapes

: *
dtype0
~
Adam/output1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/output1/bias/m
w
'Adam/output1/bias/m/Read/ReadVariableOpReadVariableOpAdam/output1/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_24/kernel/m
?
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
: *
dtype0
?
Adam/dense_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?8 *'
shared_nameAdam/dense_26/kernel/m
?
*Adam/dense_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/m*
_output_shapes
:	?8 *
dtype0
?
Adam/dense_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/m
y
(Adam/dense_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/m*
_output_shapes
: *
dtype0
?
Adam/output1/kernel/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/output1/kernel/m_1
?
+Adam/output1/kernel/m_1/Read/ReadVariableOpReadVariableOpAdam/output1/kernel/m_1*
_output_shapes

: *
dtype0
?
Adam/output1/bias/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/output1/bias/m_1
{
)Adam/output1/bias/m_1/Read/ReadVariableOpReadVariableOpAdam/output1/bias/m_1*
_output_shapes
:*
dtype0
?
Adam/left/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/left/kernel/v
?
&Adam/left/kernel/v/Read/ReadVariableOpReadVariableOpAdam/left/kernel/v*&
_output_shapes
:@*
dtype0
x
Adam/left/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/left/bias/v
q
$Adam/left/bias/v/Read/ReadVariableOpReadVariableOpAdam/left/bias/v*
_output_shapes
:@*
dtype0
?
Adam/right1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/right1/kernel/v
?
(Adam/right1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/right1/kernel/v*&
_output_shapes
:@*
dtype0
|
Adam/right1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameAdam/right1/bias/v
u
&Adam/right1/bias/v/Read/ReadVariableOpReadVariableOpAdam/right1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/left1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameAdam/left1/kernel/v
?
'Adam/left1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/left1/kernel/v*'
_output_shapes
:@?*
dtype0
{
Adam/left1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/left1/bias/v
t
%Adam/left1/bias/v/Read/ReadVariableOpReadVariableOpAdam/left1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/right/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@?*$
shared_nameAdam/right/kernel/v
?
'Adam/right/kernel/v/Read/ReadVariableOpReadVariableOpAdam/right/kernel/v*'
_output_shapes
:@?*
dtype0
{
Adam/right/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameAdam/right/bias/v
t
%Adam/right/bias/v/Read/ReadVariableOpReadVariableOpAdam/right/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/mid1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?@*#
shared_nameAdam/mid1/kernel/v
?
&Adam/mid1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mid1/kernel/v*'
_output_shapes
:?@*
dtype0
x
Adam/mid1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/mid1/bias/v
q
$Adam/mid1/bias/v/Read/ReadVariableOpReadVariableOpAdam/mid1/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
?? *'
shared_nameAdam/dense_25/kernel/v
?
*Adam/dense_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/kernel/v* 
_output_shapes
:
?? *
dtype0
?
Adam/dense_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_25/bias/v
y
(Adam/dense_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_25/bias/v*
_output_shapes
: *
dtype0
?
Adam/output1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/output1/kernel/v

)Adam/output1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output1/kernel/v*
_output_shapes

: *
dtype0
~
Adam/output1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/output1/bias/v
w
'Adam/output1/bias/v/Read/ReadVariableOpReadVariableOpAdam/output1/bias/v*
_output_shapes
:*
dtype0
?
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *(
shared_nameAdam/conv2d_24/kernel/v
?
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
:@ *
dtype0
?
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
: *
dtype0
?
Adam/dense_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?8 *'
shared_nameAdam/dense_26/kernel/v
?
*Adam/dense_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/kernel/v*
_output_shapes
:	?8 *
dtype0
?
Adam/dense_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/dense_26/bias/v
y
(Adam/dense_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_26/bias/v*
_output_shapes
: *
dtype0
?
Adam/output1/kernel/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
: *(
shared_nameAdam/output1/kernel/v_1
?
+Adam/output1/kernel/v_1/Read/ReadVariableOpReadVariableOpAdam/output1/kernel/v_1*
_output_shapes

: *
dtype0
?
Adam/output1/bias/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/output1/bias/v_1
{
)Adam/output1/bias/v_1/Read/ReadVariableOpReadVariableOpAdam/output1/bias/v_1*
_output_shapes
:*
dtype0

NoOpNoOp
?y
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?x
value?xB?x B?x
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
	optimizer
loss
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
 
 
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
?
layer-0
layer_with_weights-0
layer-1
layer-2
 layer-3
!layer_with_weights-1
!layer-4
"layer_with_weights-2
"layer-5
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?
'iter

(beta_1

)beta_2
	*decay
+learning_rate,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?
 
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19
 
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
	regularization_losses
 
 
 
h

,kernel
-bias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
h

.kernel
/bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
h

0kernel
1bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
h

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
R
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
R
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
h

4kernel
5bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
R
a	variables
btrainable_variables
cregularization_losses
d	keras_api
R
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
h

6kernel
7bias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
h

8kernel
9bias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
f
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
f
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
 
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
 
h

:kernel
;bias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
R
z	variables
{trainable_variables
|regularization_losses
}	keras_api
T
~	variables
trainable_variables
?regularization_losses
?	keras_api
l

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
l

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
*
:0
;1
<2
=3
>4
?5
*
:0
;1
<2
=3
>4
?5
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEleft/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE	left/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEright1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEright1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEleft1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
left1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
HF
VARIABLE_VALUEright/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
FD
VARIABLE_VALUE
right/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUEmid1/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
EC
VARIABLE_VALUE	mid1/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_25/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_25/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEoutput1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEoutput1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEconv2d_24/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEconv2d_24/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_26/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEdense_26/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEoutput1/kernel_1'variables/18/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEoutput1/bias_1'variables/19/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3
(
?0
?1
?2
?3
?4
 
 

,0
-1

,0
-1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses

.0
/1

.0
/1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses

00
11

00
11
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses

20
31

20
31
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses

40
51

40
51
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses

60
71

60
71
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses

80
91

80
91
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
 
^
0
1
2
3
4
5
6
7
8
9
10
11
12
 
 
 

:0
;1

:0
;1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses

<0
=1

<0
=1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses

>0
?1

>0
?1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
 
*
0
1
2
 3
!4
"5
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
jh
VARIABLE_VALUEAdam/left/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/left/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/right1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/right1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/left1/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/left1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/right/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/right/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/mid1/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/mid1/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_25/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_25/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/output1/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/output1/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_24/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_24/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_26/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_26/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/output1/kernel/m_1Cvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/output1/bias/m_1Cvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/left/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/left/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/right1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/right1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/left1/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/left1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUEAdam/right/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUEAdam/right/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUEAdam/mid1/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEAdam/mid1/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_25/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_25/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/output1/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
lj
VARIABLE_VALUEAdam/output1/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/conv2d_24/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/conv2d_24/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/dense_26/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
mk
VARIABLE_VALUEAdam/dense_26/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdam/output1/kernel/v_1Cvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
nl
VARIABLE_VALUEAdam/output1/bias/v_1Cvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_66Placeholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
serving_default_input_67Placeholder*/
_output_shapes
:?????????@@*
dtype0*$
shape:?????????@@
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_66serving_default_input_67right1/kernelright1/biasleft/kernel	left/biasleft1/kernel
left1/biasright/kernel
right/biasmid1/kernel	mid1/biasdense_25/kerneldense_25/biasoutput1/kerneloutput1/biasconv2d_24/kernelconv2d_24/biasdense_26/kerneldense_26/biasoutput1/kernel_1output1/bias_1*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_297035
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpleft/kernel/Read/ReadVariableOpleft/bias/Read/ReadVariableOp!right1/kernel/Read/ReadVariableOpright1/bias/Read/ReadVariableOp left1/kernel/Read/ReadVariableOpleft1/bias/Read/ReadVariableOp right/kernel/Read/ReadVariableOpright/bias/Read/ReadVariableOpmid1/kernel/Read/ReadVariableOpmid1/bias/Read/ReadVariableOp#dense_25/kernel/Read/ReadVariableOp!dense_25/bias/Read/ReadVariableOp"output1/kernel/Read/ReadVariableOp output1/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp$output1/kernel_1/Read/ReadVariableOp"output1/bias_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp&Adam/left/kernel/m/Read/ReadVariableOp$Adam/left/bias/m/Read/ReadVariableOp(Adam/right1/kernel/m/Read/ReadVariableOp&Adam/right1/bias/m/Read/ReadVariableOp'Adam/left1/kernel/m/Read/ReadVariableOp%Adam/left1/bias/m/Read/ReadVariableOp'Adam/right/kernel/m/Read/ReadVariableOp%Adam/right/bias/m/Read/ReadVariableOp&Adam/mid1/kernel/m/Read/ReadVariableOp$Adam/mid1/bias/m/Read/ReadVariableOp*Adam/dense_25/kernel/m/Read/ReadVariableOp(Adam/dense_25/bias/m/Read/ReadVariableOp)Adam/output1/kernel/m/Read/ReadVariableOp'Adam/output1/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp*Adam/dense_26/kernel/m/Read/ReadVariableOp(Adam/dense_26/bias/m/Read/ReadVariableOp+Adam/output1/kernel/m_1/Read/ReadVariableOp)Adam/output1/bias/m_1/Read/ReadVariableOp&Adam/left/kernel/v/Read/ReadVariableOp$Adam/left/bias/v/Read/ReadVariableOp(Adam/right1/kernel/v/Read/ReadVariableOp&Adam/right1/bias/v/Read/ReadVariableOp'Adam/left1/kernel/v/Read/ReadVariableOp%Adam/left1/bias/v/Read/ReadVariableOp'Adam/right/kernel/v/Read/ReadVariableOp%Adam/right/bias/v/Read/ReadVariableOp&Adam/mid1/kernel/v/Read/ReadVariableOp$Adam/mid1/bias/v/Read/ReadVariableOp*Adam/dense_25/kernel/v/Read/ReadVariableOp(Adam/dense_25/bias/v/Read/ReadVariableOp)Adam/output1/kernel/v/Read/ReadVariableOp'Adam/output1/bias/v/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp*Adam/dense_26/kernel/v/Read/ReadVariableOp(Adam/dense_26/bias/v/Read/ReadVariableOp+Adam/output1/kernel/v_1/Read/ReadVariableOp)Adam/output1/bias/v_1/Read/ReadVariableOpConst*X
TinQ
O2M	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_298146
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateleft/kernel	left/biasright1/kernelright1/biasleft1/kernel
left1/biasright/kernel
right/biasmid1/kernel	mid1/biasdense_25/kerneldense_25/biasoutput1/kerneloutput1/biasconv2d_24/kernelconv2d_24/biasdense_26/kerneldense_26/biasoutput1/kernel_1output1/bias_1totalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/left/kernel/mAdam/left/bias/mAdam/right1/kernel/mAdam/right1/bias/mAdam/left1/kernel/mAdam/left1/bias/mAdam/right/kernel/mAdam/right/bias/mAdam/mid1/kernel/mAdam/mid1/bias/mAdam/dense_25/kernel/mAdam/dense_25/bias/mAdam/output1/kernel/mAdam/output1/bias/mAdam/conv2d_24/kernel/mAdam/conv2d_24/bias/mAdam/dense_26/kernel/mAdam/dense_26/bias/mAdam/output1/kernel/m_1Adam/output1/bias/m_1Adam/left/kernel/vAdam/left/bias/vAdam/right1/kernel/vAdam/right1/bias/vAdam/left1/kernel/vAdam/left1/bias/vAdam/right/kernel/vAdam/right/bias/vAdam/mid1/kernel/vAdam/mid1/bias/vAdam/dense_25/kernel/vAdam/dense_25/bias/vAdam/output1/kernel/vAdam/output1/bias/vAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/vAdam/dense_26/kernel/vAdam/dense_26/bias/vAdam/output1/kernel/v_1Adam/output1/bias/v_1*W
TinP
N2L*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_298381??
?
?
A__inference_right_layer_call_and_return_conditional_losses_297675

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????@@?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
@__inference_mid1_layer_call_and_return_conditional_losses_295890

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?r
?
D__inference_model_39_layer_call_and_return_conditional_losses_297215
inputs_0
inputs_1H
.model_37_right1_conv2d_readvariableop_resource:@=
/model_37_right1_biasadd_readvariableop_resource:@F
,model_37_left_conv2d_readvariableop_resource:@;
-model_37_left_biasadd_readvariableop_resource:@H
-model_37_left1_conv2d_readvariableop_resource:@?=
.model_37_left1_biasadd_readvariableop_resource:	?H
-model_37_right_conv2d_readvariableop_resource:@?=
.model_37_right_biasadd_readvariableop_resource:	?G
,model_37_mid1_conv2d_readvariableop_resource:?@;
-model_37_mid1_biasadd_readvariableop_resource:@D
0model_37_dense_25_matmul_readvariableop_resource:
?? ?
1model_37_dense_25_biasadd_readvariableop_resource: A
/model_37_output1_matmul_readvariableop_resource: >
0model_37_output1_biasadd_readvariableop_resource:K
1model_38_conv2d_24_conv2d_readvariableop_resource:@ @
2model_38_conv2d_24_biasadd_readvariableop_resource: C
0model_38_dense_26_matmul_readvariableop_resource:	?8 ?
1model_38_dense_26_biasadd_readvariableop_resource: A
/model_38_output1_matmul_readvariableop_resource: >
0model_38_output1_biasadd_readvariableop_resource:
identity

identity_1??(model_37/dense_25/BiasAdd/ReadVariableOp?'model_37/dense_25/MatMul/ReadVariableOp?$model_37/left/BiasAdd/ReadVariableOp?#model_37/left/Conv2D/ReadVariableOp?%model_37/left1/BiasAdd/ReadVariableOp?$model_37/left1/Conv2D/ReadVariableOp?$model_37/mid1/BiasAdd/ReadVariableOp?#model_37/mid1/Conv2D/ReadVariableOp?'model_37/output1/BiasAdd/ReadVariableOp?&model_37/output1/MatMul/ReadVariableOp?%model_37/right/BiasAdd/ReadVariableOp?$model_37/right/Conv2D/ReadVariableOp?&model_37/right1/BiasAdd/ReadVariableOp?%model_37/right1/Conv2D/ReadVariableOp?)model_38/conv2d_24/BiasAdd/ReadVariableOp?(model_38/conv2d_24/Conv2D/ReadVariableOp?(model_38/dense_26/BiasAdd/ReadVariableOp?'model_38/dense_26/MatMul/ReadVariableOp?'model_38/output1/BiasAdd/ReadVariableOp?&model_38/output1/MatMul/ReadVariableOp?
%model_37/right1/Conv2D/ReadVariableOpReadVariableOp.model_37_right1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_37/right1/Conv2DConv2Dinputs_0-model_37/right1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
&model_37/right1/BiasAdd/ReadVariableOpReadVariableOp/model_37_right1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/right1/BiasAddBiasAddmodel_37/right1/Conv2D:output:0.model_37/right1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@x
model_37/right1/ReluRelu model_37/right1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
#model_37/left/Conv2D/ReadVariableOpReadVariableOp,model_37_left_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_37/left/Conv2DConv2Dinputs_1+model_37/left/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
$model_37/left/BiasAdd/ReadVariableOpReadVariableOp-model_37_left_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/left/BiasAddBiasAddmodel_37/left/Conv2D:output:0,model_37/left/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@t
model_37/left/ReluRelumodel_37/left/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
$model_37/left1/Conv2D/ReadVariableOpReadVariableOp-model_37_left1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_37/left1/Conv2DConv2D model_37/left/Relu:activations:0,model_37/left1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
%model_37/left1/BiasAdd/ReadVariableOpReadVariableOp.model_37_left1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_37/left1/BiasAddBiasAddmodel_37/left1/Conv2D:output:0-model_37/left1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?w
model_37/left1/ReluRelumodel_37/left1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
$model_37/right/Conv2D/ReadVariableOpReadVariableOp-model_37_right_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_37/right/Conv2DConv2D"model_37/right1/Relu:activations:0,model_37/right/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
%model_37/right/BiasAdd/ReadVariableOpReadVariableOp.model_37_right_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_37/right/BiasAddBiasAddmodel_37/right/Conv2D:output:0-model_37/right/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?w
model_37/right/ReluRelumodel_37/right/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
model_37/maximum_13/MaximumMaximum!model_37/left1/Relu:activations:0!model_37/right/Relu:activations:0*
T0*0
_output_shapes
:?????????@@??
!model_37/max_pooling2d_37/MaxPoolMaxPoolmodel_37/maximum_13/Maximum:z:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
?
#model_37/mid1/Conv2D/ReadVariableOpReadVariableOp,model_37_mid1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
model_37/mid1/Conv2DConv2D*model_37/max_pooling2d_37/MaxPool:output:0+model_37/mid1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
$model_37/mid1/BiasAdd/ReadVariableOpReadVariableOp-model_37_mid1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/mid1/BiasAddBiasAddmodel_37/mid1/Conv2D:output:0,model_37/mid1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @t
model_37/mid1/ReluRelumodel_37/mid1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
model_37/dropout_16/IdentityIdentity model_37/mid1/Relu:activations:0*
T0*/
_output_shapes
:?????????  @j
model_37/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_37/flatten_25/ReshapeReshape%model_37/dropout_16/Identity:output:0"model_37/flatten_25/Const:output:0*
T0*)
_output_shapes
:????????????
'model_37/dense_25/MatMul/ReadVariableOpReadVariableOp0model_37_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0?
model_37/dense_25/MatMulMatMul$model_37/flatten_25/Reshape:output:0/model_37/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(model_37/dense_25/BiasAdd/ReadVariableOpReadVariableOp1model_37_dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_37/dense_25/BiasAddBiasAdd"model_37/dense_25/MatMul:product:00model_37/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
model_37/dense_25/ReluRelu"model_37/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
&model_37/output1/MatMul/ReadVariableOpReadVariableOp/model_37_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_37/output1/MatMulMatMul$model_37/dense_25/Relu:activations:0.model_37/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_37/output1/BiasAdd/ReadVariableOpReadVariableOp0model_37_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_37/output1/BiasAddBiasAdd!model_37/output1/MatMul:product:0/model_37/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_37/output1/SoftmaxSoftmax!model_37/output1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(model_38/conv2d_24/Conv2D/ReadVariableOpReadVariableOp1model_38_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_38/conv2d_24/Conv2DConv2D%model_37/dropout_16/Identity:output:00model_38/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
)model_38/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp2model_38_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_38/conv2d_24/BiasAddBiasAdd"model_38/conv2d_24/Conv2D:output:01model_38/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ~
model_38/conv2d_24/ReluRelu#model_38/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
!model_38/max_pooling2d_38/MaxPoolMaxPool%model_38/conv2d_24/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
j
model_38/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_38/flatten_26/ReshapeReshape*model_38/max_pooling2d_38/MaxPool:output:0"model_38/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????8?
'model_38/dense_26/MatMul/ReadVariableOpReadVariableOp0model_38_dense_26_matmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0?
model_38/dense_26/MatMulMatMul$model_38/flatten_26/Reshape:output:0/model_38/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(model_38/dense_26/BiasAdd/ReadVariableOpReadVariableOp1model_38_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_38/dense_26/BiasAddBiasAdd"model_38/dense_26/MatMul:product:00model_38/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
model_38/dense_26/ReluRelu"model_38/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
&model_38/output1/MatMul/ReadVariableOpReadVariableOp/model_38_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_38/output1/MatMulMatMul$model_38/dense_26/Relu:activations:0.model_38/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_38/output1/BiasAdd/ReadVariableOpReadVariableOp0model_38_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_38/output1/BiasAddBiasAdd!model_38/output1/MatMul:product:0/model_38/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_38/output1/SoftmaxSoftmax!model_38/output1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model_37/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????s

Identity_1Identity"model_38/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_37/dense_25/BiasAdd/ReadVariableOp(^model_37/dense_25/MatMul/ReadVariableOp%^model_37/left/BiasAdd/ReadVariableOp$^model_37/left/Conv2D/ReadVariableOp&^model_37/left1/BiasAdd/ReadVariableOp%^model_37/left1/Conv2D/ReadVariableOp%^model_37/mid1/BiasAdd/ReadVariableOp$^model_37/mid1/Conv2D/ReadVariableOp(^model_37/output1/BiasAdd/ReadVariableOp'^model_37/output1/MatMul/ReadVariableOp&^model_37/right/BiasAdd/ReadVariableOp%^model_37/right/Conv2D/ReadVariableOp'^model_37/right1/BiasAdd/ReadVariableOp&^model_37/right1/Conv2D/ReadVariableOp*^model_38/conv2d_24/BiasAdd/ReadVariableOp)^model_38/conv2d_24/Conv2D/ReadVariableOp)^model_38/dense_26/BiasAdd/ReadVariableOp(^model_38/dense_26/MatMul/ReadVariableOp(^model_38/output1/BiasAdd/ReadVariableOp'^model_38/output1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2T
(model_37/dense_25/BiasAdd/ReadVariableOp(model_37/dense_25/BiasAdd/ReadVariableOp2R
'model_37/dense_25/MatMul/ReadVariableOp'model_37/dense_25/MatMul/ReadVariableOp2L
$model_37/left/BiasAdd/ReadVariableOp$model_37/left/BiasAdd/ReadVariableOp2J
#model_37/left/Conv2D/ReadVariableOp#model_37/left/Conv2D/ReadVariableOp2N
%model_37/left1/BiasAdd/ReadVariableOp%model_37/left1/BiasAdd/ReadVariableOp2L
$model_37/left1/Conv2D/ReadVariableOp$model_37/left1/Conv2D/ReadVariableOp2L
$model_37/mid1/BiasAdd/ReadVariableOp$model_37/mid1/BiasAdd/ReadVariableOp2J
#model_37/mid1/Conv2D/ReadVariableOp#model_37/mid1/Conv2D/ReadVariableOp2R
'model_37/output1/BiasAdd/ReadVariableOp'model_37/output1/BiasAdd/ReadVariableOp2P
&model_37/output1/MatMul/ReadVariableOp&model_37/output1/MatMul/ReadVariableOp2N
%model_37/right/BiasAdd/ReadVariableOp%model_37/right/BiasAdd/ReadVariableOp2L
$model_37/right/Conv2D/ReadVariableOp$model_37/right/Conv2D/ReadVariableOp2P
&model_37/right1/BiasAdd/ReadVariableOp&model_37/right1/BiasAdd/ReadVariableOp2N
%model_37/right1/Conv2D/ReadVariableOp%model_37/right1/Conv2D/ReadVariableOp2V
)model_38/conv2d_24/BiasAdd/ReadVariableOp)model_38/conv2d_24/BiasAdd/ReadVariableOp2T
(model_38/conv2d_24/Conv2D/ReadVariableOp(model_38/conv2d_24/Conv2D/ReadVariableOp2T
(model_38/dense_26/BiasAdd/ReadVariableOp(model_38/dense_26/BiasAdd/ReadVariableOp2R
'model_38/dense_26/MatMul/ReadVariableOp'model_38/dense_26/MatMul/ReadVariableOp2R
'model_38/output1/BiasAdd/ReadVariableOp'model_38/output1/BiasAdd/ReadVariableOp2P
&model_38/output1/MatMul/ReadVariableOp&model_38/output1/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
?
(__inference_output1_layer_call_fn_297794

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_295939o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_25_layer_call_and_return_conditional_losses_297785

inputs2
matmul_readvariableop_resource:
?? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
B__inference_right1_layer_call_and_return_conditional_losses_297635

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
A__inference_left1_layer_call_and_return_conditional_losses_297655

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????@@?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
)__inference_model_39_layer_call_fn_296688
input_66
input_67!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:$

unknown_13:@ 

unknown_14: 

unknown_15:	?8 

unknown_16: 

unknown_17: 

unknown_18:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_66input_67unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_39_layer_call_and_return_conditional_losses_296643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?
?
)__inference_model_37_layer_call_fn_296244
input_63
input_64!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_63input_64unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_296175w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_63:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_64
?
?
)__inference_dense_25_layer_call_fn_297774

inputs
unknown:
?? 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_295922o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
)__inference_model_37_layer_call_fn_295980
input_63
input_64!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_63input_64unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_295947w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_63:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_64
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297840

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
A__inference_left1_layer_call_and_return_conditional_losses_295842

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????@@?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?

?
D__inference_dense_25_layer_call_and_return_conditional_losses_295922

inputs2
matmul_readvariableop_resource:
?? -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
C__inference_output1_layer_call_and_return_conditional_losses_296412

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_26_layer_call_and_return_conditional_losses_296395

inputs1
matmul_readvariableop_resource:	?8 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????8
 
_user_specified_nameinputs
?

?
@__inference_left_layer_call_and_return_conditional_losses_297615

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296343

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?	
?
)__inference_model_38_layer_call_fn_296434
input_65!
unknown:@ 
	unknown_0: 
	unknown_1:	?8 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_65unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  @
"
_user_specified_name
input_65
?
?
&__inference_left1_layer_call_fn_297644

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_left1_layer_call_and_return_conditional_losses_295842x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????@@?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?2
?
D__inference_model_37_layer_call_and_return_conditional_losses_295947

inputs
inputs_1'
right1_295809:@
right1_295811:@%
left_295826:@
left_295828:@'
left1_295843:@?
left1_295845:	?'
right_295860:@?
right_295862:	?&
mid1_295891:?@
mid1_295893:@#
dense_25_295923:
?? 
dense_25_295925:  
output1_295940: 
output1_295942:
identity

identity_1?? dense_25/StatefulPartitionedCall?left/StatefulPartitionedCall?left1/StatefulPartitionedCall?mid1/StatefulPartitionedCall?output1/StatefulPartitionedCall?right/StatefulPartitionedCall?right1/StatefulPartitionedCall?
right1/StatefulPartitionedCallStatefulPartitionedCallinputsright1_295809right1_295811*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_right1_layer_call_and_return_conditional_losses_295808?
left/StatefulPartitionedCallStatefulPartitionedCallinputs_1left_295826left_295828*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_left_layer_call_and_return_conditional_losses_295825?
left1/StatefulPartitionedCallStatefulPartitionedCall%left/StatefulPartitionedCall:output:0left1_295843left1_295845*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_left1_layer_call_and_return_conditional_losses_295842?
right/StatefulPartitionedCallStatefulPartitionedCall'right1/StatefulPartitionedCall:output:0right_295860right_295862*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_right_layer_call_and_return_conditional_losses_295859?
maximum_13/PartitionedCallPartitionedCall&left1/StatefulPartitionedCall:output:0&right/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871?
 max_pooling2d_37/PartitionedCallPartitionedCall#maximum_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877?
mid1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0mid1_295891mid1_295893*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_mid1_layer_call_and_return_conditional_losses_295890?
dropout_16/PartitionedCallPartitionedCall%mid1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_295901?
flatten_25/PartitionedCallPartitionedCall#dropout_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_25_295923dense_25_295925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_295922?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0output1_295940output1_295942*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_295939z
IdentityIdentity#dropout_16/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @y

Identity_1Identity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_25/StatefulPartitionedCall^left/StatefulPartitionedCall^left1/StatefulPartitionedCall^mid1/StatefulPartitionedCall ^output1/StatefulPartitionedCall^right/StatefulPartitionedCall^right1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2<
left/StatefulPartitionedCallleft/StatefulPartitionedCall2>
left1/StatefulPartitionedCallleft1/StatefulPartitionedCall2<
mid1/StatefulPartitionedCallmid1/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall2>
right/StatefulPartitionedCallright/StatefulPartitionedCall2@
right1/StatefulPartitionedCallright1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?

?
C__inference_output1_layer_call_and_return_conditional_losses_297805

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
r
F__inference_maximum_13_layer_call_and_return_conditional_losses_297687
inputs_0
inputs_1
identitya
MaximumMaximuminputs_0inputs_1*
T0*0
_output_shapes
:?????????@@?\
IdentityIdentityMaximum:z:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????@@?:?????????@@?:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????@@?
"
_user_specified_name
inputs/1
?

?
@__inference_left_layer_call_and_return_conditional_losses_295825

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
d
+__inference_dropout_16_layer_call_fn_297737

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_296026w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_297035
input_66
input_67!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:$

unknown_13:@ 

unknown_14: 

unknown_15:	?8 

unknown_16: 

unknown_17: 

unknown_18:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_66input_67unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_295776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_296026

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????  @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????  @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
D__inference_model_38_layer_call_and_return_conditional_losses_296515

inputs*
conv2d_24_296497:@ 
conv2d_24_296499: "
dense_26_296504:	?8 
dense_26_296506:  
output1_296509: 
output1_296511:
identity??!conv2d_24/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?output1/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_296497conv2d_24_296499*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364?
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_296504dense_26_296506*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_296395?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0output1_296509output1_296511*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_296412w
IdentityIdentity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_24/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^output1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
D__inference_model_38_layer_call_and_return_conditional_losses_296568
input_65*
conv2d_24_296550:@ 
conv2d_24_296552: "
dense_26_296557:	?8 
dense_26_296559:  
output1_296562: 
output1_296564:
identity??!conv2d_24/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?output1/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinput_65conv2d_24_296550conv2d_24_296552*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364?
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_296557dense_26_296559*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_296395?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0output1_296562output1_296564*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_296412w
IdentityIdentity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_24/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^output1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  @
"
_user_specified_name
input_65
?
?
)__inference_model_39_layer_call_fn_296881
input_66
input_67!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:$

unknown_13:@ 

unknown_14: 

unknown_15:	?8 

unknown_16: 

unknown_17: 

unknown_18:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_66input_67unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_39_layer_call_and_return_conditional_losses_296788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?
?
%__inference_mid1_layer_call_fn_297716

inputs"
unknown:?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_mid1_layer_call_and_return_conditional_losses_295890w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
?
&__inference_right_layer_call_fn_297664

inputs"
unknown:@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_right_layer_call_and_return_conditional_losses_295859x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:?????????@@?`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
?
D__inference_model_39_layer_call_and_return_conditional_losses_296930
input_66
input_67)
model_37_296885:@
model_37_296887:@)
model_37_296889:@
model_37_296891:@*
model_37_296893:@?
model_37_296895:	?*
model_37_296897:@?
model_37_296899:	?*
model_37_296901:?@
model_37_296903:@#
model_37_296905:
?? 
model_37_296907: !
model_37_296909: 
model_37_296911:)
model_38_296915:@ 
model_38_296917: "
model_38_296919:	?8 
model_38_296921: !
model_38_296923: 
model_38_296925:
identity

identity_1?? model_37/StatefulPartitionedCall? model_38/StatefulPartitionedCall?
 model_37/StatefulPartitionedCallStatefulPartitionedCallinput_66input_67model_37_296885model_37_296887model_37_296889model_37_296891model_37_296893model_37_296895model_37_296897model_37_296899model_37_296901model_37_296903model_37_296905model_37_296907model_37_296909model_37_296911*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_295947?
 model_38/StatefulPartitionedCallStatefulPartitionedCall)model_37/StatefulPartitionedCall:output:0model_38_296915model_38_296917model_38_296919model_38_296921model_38_296923model_38_296925*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296419x
IdentityIdentity)model_37/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????z

Identity_1Identity)model_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^model_37/StatefulPartitionedCall!^model_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2D
 model_37/StatefulPartitionedCall model_37/StatefulPartitionedCall2D
 model_38/StatefulPartitionedCall model_38/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?
G
+__inference_dropout_16_layer_call_fn_297732

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_295901h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
W
+__inference_maximum_13_layer_call_fn_297681
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????@@?:?????????@@?:Z V
0
_output_shapes
:?????????@@?
"
_user_specified_name
inputs/0:ZV
0
_output_shapes
:?????????@@?
"
_user_specified_name
inputs/1
?
?
D__inference_model_38_layer_call_and_return_conditional_losses_296589
input_65*
conv2d_24_296571:@ 
conv2d_24_296573: "
dense_26_296578:	?8 
dense_26_296580:  
output1_296583: 
output1_296585:
identity??!conv2d_24/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?output1/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinput_65conv2d_24_296571conv2d_24_296573*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364?
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_296578dense_26_296580*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_296395?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0output1_296583output1_296585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_296412w
IdentityIdentity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_24/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^output1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????  @
"
_user_specified_name
input_65
?
?
A__inference_right_layer_call_and_return_conditional_losses_295859

inputs9
conv2d_readvariableop_resource:@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:?????????@@?j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:?????????@@?w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@@
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?	
?
)__inference_model_38_layer_call_fn_297539

inputs!
unknown:@ 
	unknown_0: 
	unknown_1:	?8 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_295776
input_66
input_67Q
7model_39_model_37_right1_conv2d_readvariableop_resource:@F
8model_39_model_37_right1_biasadd_readvariableop_resource:@O
5model_39_model_37_left_conv2d_readvariableop_resource:@D
6model_39_model_37_left_biasadd_readvariableop_resource:@Q
6model_39_model_37_left1_conv2d_readvariableop_resource:@?F
7model_39_model_37_left1_biasadd_readvariableop_resource:	?Q
6model_39_model_37_right_conv2d_readvariableop_resource:@?F
7model_39_model_37_right_biasadd_readvariableop_resource:	?P
5model_39_model_37_mid1_conv2d_readvariableop_resource:?@D
6model_39_model_37_mid1_biasadd_readvariableop_resource:@M
9model_39_model_37_dense_25_matmul_readvariableop_resource:
?? H
:model_39_model_37_dense_25_biasadd_readvariableop_resource: J
8model_39_model_37_output1_matmul_readvariableop_resource: G
9model_39_model_37_output1_biasadd_readvariableop_resource:T
:model_39_model_38_conv2d_24_conv2d_readvariableop_resource:@ I
;model_39_model_38_conv2d_24_biasadd_readvariableop_resource: L
9model_39_model_38_dense_26_matmul_readvariableop_resource:	?8 H
:model_39_model_38_dense_26_biasadd_readvariableop_resource: J
8model_39_model_38_output1_matmul_readvariableop_resource: G
9model_39_model_38_output1_biasadd_readvariableop_resource:
identity

identity_1??1model_39/model_37/dense_25/BiasAdd/ReadVariableOp?0model_39/model_37/dense_25/MatMul/ReadVariableOp?-model_39/model_37/left/BiasAdd/ReadVariableOp?,model_39/model_37/left/Conv2D/ReadVariableOp?.model_39/model_37/left1/BiasAdd/ReadVariableOp?-model_39/model_37/left1/Conv2D/ReadVariableOp?-model_39/model_37/mid1/BiasAdd/ReadVariableOp?,model_39/model_37/mid1/Conv2D/ReadVariableOp?0model_39/model_37/output1/BiasAdd/ReadVariableOp?/model_39/model_37/output1/MatMul/ReadVariableOp?.model_39/model_37/right/BiasAdd/ReadVariableOp?-model_39/model_37/right/Conv2D/ReadVariableOp?/model_39/model_37/right1/BiasAdd/ReadVariableOp?.model_39/model_37/right1/Conv2D/ReadVariableOp?2model_39/model_38/conv2d_24/BiasAdd/ReadVariableOp?1model_39/model_38/conv2d_24/Conv2D/ReadVariableOp?1model_39/model_38/dense_26/BiasAdd/ReadVariableOp?0model_39/model_38/dense_26/MatMul/ReadVariableOp?0model_39/model_38/output1/BiasAdd/ReadVariableOp?/model_39/model_38/output1/MatMul/ReadVariableOp?
.model_39/model_37/right1/Conv2D/ReadVariableOpReadVariableOp7model_39_model_37_right1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_39/model_37/right1/Conv2DConv2Dinput_666model_39/model_37/right1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
/model_39/model_37/right1/BiasAdd/ReadVariableOpReadVariableOp8model_39_model_37_right1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 model_39/model_37/right1/BiasAddBiasAdd(model_39/model_37/right1/Conv2D:output:07model_39/model_37/right1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@?
model_39/model_37/right1/ReluRelu)model_39/model_37/right1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
,model_39/model_37/left/Conv2D/ReadVariableOpReadVariableOp5model_39_model_37_left_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_39/model_37/left/Conv2DConv2Dinput_674model_39/model_37/left/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
-model_39/model_37/left/BiasAdd/ReadVariableOpReadVariableOp6model_39_model_37_left_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_39/model_37/left/BiasAddBiasAdd&model_39/model_37/left/Conv2D:output:05model_39/model_37/left/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@?
model_39/model_37/left/ReluRelu'model_39/model_37/left/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
-model_39/model_37/left1/Conv2D/ReadVariableOpReadVariableOp6model_39_model_37_left1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_39/model_37/left1/Conv2DConv2D)model_39/model_37/left/Relu:activations:05model_39/model_37/left1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
.model_39/model_37/left1/BiasAdd/ReadVariableOpReadVariableOp7model_39_model_37_left1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_39/model_37/left1/BiasAddBiasAdd'model_39/model_37/left1/Conv2D:output:06model_39/model_37/left1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@??
model_39/model_37/left1/ReluRelu(model_39/model_37/left1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
-model_39/model_37/right/Conv2D/ReadVariableOpReadVariableOp6model_39_model_37_right_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_39/model_37/right/Conv2DConv2D+model_39/model_37/right1/Relu:activations:05model_39/model_37/right/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
.model_39/model_37/right/BiasAdd/ReadVariableOpReadVariableOp7model_39_model_37_right_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_39/model_37/right/BiasAddBiasAdd'model_39/model_37/right/Conv2D:output:06model_39/model_37/right/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@??
model_39/model_37/right/ReluRelu(model_39/model_37/right/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
$model_39/model_37/maximum_13/MaximumMaximum*model_39/model_37/left1/Relu:activations:0*model_39/model_37/right/Relu:activations:0*
T0*0
_output_shapes
:?????????@@??
*model_39/model_37/max_pooling2d_37/MaxPoolMaxPool(model_39/model_37/maximum_13/Maximum:z:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
?
,model_39/model_37/mid1/Conv2D/ReadVariableOpReadVariableOp5model_39_model_37_mid1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
model_39/model_37/mid1/Conv2DConv2D3model_39/model_37/max_pooling2d_37/MaxPool:output:04model_39/model_37/mid1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
-model_39/model_37/mid1/BiasAdd/ReadVariableOpReadVariableOp6model_39_model_37_mid1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_39/model_37/mid1/BiasAddBiasAdd&model_39/model_37/mid1/Conv2D:output:05model_39/model_37/mid1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @?
model_39/model_37/mid1/ReluRelu'model_39/model_37/mid1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @?
%model_39/model_37/dropout_16/IdentityIdentity)model_39/model_37/mid1/Relu:activations:0*
T0*/
_output_shapes
:?????????  @s
"model_39/model_37/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
$model_39/model_37/flatten_25/ReshapeReshape.model_39/model_37/dropout_16/Identity:output:0+model_39/model_37/flatten_25/Const:output:0*
T0*)
_output_shapes
:????????????
0model_39/model_37/dense_25/MatMul/ReadVariableOpReadVariableOp9model_39_model_37_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0?
!model_39/model_37/dense_25/MatMulMatMul-model_39/model_37/flatten_25/Reshape:output:08model_39/model_37/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
1model_39/model_37/dense_25/BiasAdd/ReadVariableOpReadVariableOp:model_39_model_37_dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_39/model_37/dense_25/BiasAddBiasAdd+model_39/model_37/dense_25/MatMul:product:09model_39/model_37/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
model_39/model_37/dense_25/ReluRelu+model_39/model_37/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
/model_39/model_37/output1/MatMul/ReadVariableOpReadVariableOp8model_39_model_37_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
 model_39/model_37/output1/MatMulMatMul-model_39/model_37/dense_25/Relu:activations:07model_39/model_37/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0model_39/model_37/output1/BiasAdd/ReadVariableOpReadVariableOp9model_39_model_37_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
!model_39/model_37/output1/BiasAddBiasAdd*model_39/model_37/output1/MatMul:product:08model_39/model_37/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!model_39/model_37/output1/SoftmaxSoftmax*model_39/model_37/output1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
1model_39/model_38/conv2d_24/Conv2D/ReadVariableOpReadVariableOp:model_39_model_38_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
"model_39/model_38/conv2d_24/Conv2DConv2D.model_39/model_37/dropout_16/Identity:output:09model_39/model_38/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
2model_39/model_38/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp;model_39_model_38_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
#model_39/model_38/conv2d_24/BiasAddBiasAdd+model_39/model_38/conv2d_24/Conv2D:output:0:model_39/model_38/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ?
 model_39/model_38/conv2d_24/ReluRelu,model_39/model_38/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
*model_39/model_38/max_pooling2d_38/MaxPoolMaxPool.model_39/model_38/conv2d_24/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
s
"model_39/model_38/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
$model_39/model_38/flatten_26/ReshapeReshape3model_39/model_38/max_pooling2d_38/MaxPool:output:0+model_39/model_38/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????8?
0model_39/model_38/dense_26/MatMul/ReadVariableOpReadVariableOp9model_39_model_38_dense_26_matmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0?
!model_39/model_38/dense_26/MatMulMatMul-model_39/model_38/flatten_26/Reshape:output:08model_39/model_38/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
1model_39/model_38/dense_26/BiasAdd/ReadVariableOpReadVariableOp:model_39_model_38_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
"model_39/model_38/dense_26/BiasAddBiasAdd+model_39/model_38/dense_26/MatMul:product:09model_39/model_38/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
model_39/model_38/dense_26/ReluRelu+model_39/model_38/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
/model_39/model_38/output1/MatMul/ReadVariableOpReadVariableOp8model_39_model_38_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
 model_39/model_38/output1/MatMulMatMul-model_39/model_38/dense_26/Relu:activations:07model_39/model_38/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
0model_39/model_38/output1/BiasAdd/ReadVariableOpReadVariableOp9model_39_model_38_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
!model_39/model_38/output1/BiasAddBiasAdd*model_39/model_38/output1/MatMul:product:08model_39/model_38/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
!model_39/model_38/output1/SoftmaxSoftmax*model_39/model_38/output1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+model_39/model_37/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????|

Identity_1Identity+model_39/model_38/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp2^model_39/model_37/dense_25/BiasAdd/ReadVariableOp1^model_39/model_37/dense_25/MatMul/ReadVariableOp.^model_39/model_37/left/BiasAdd/ReadVariableOp-^model_39/model_37/left/Conv2D/ReadVariableOp/^model_39/model_37/left1/BiasAdd/ReadVariableOp.^model_39/model_37/left1/Conv2D/ReadVariableOp.^model_39/model_37/mid1/BiasAdd/ReadVariableOp-^model_39/model_37/mid1/Conv2D/ReadVariableOp1^model_39/model_37/output1/BiasAdd/ReadVariableOp0^model_39/model_37/output1/MatMul/ReadVariableOp/^model_39/model_37/right/BiasAdd/ReadVariableOp.^model_39/model_37/right/Conv2D/ReadVariableOp0^model_39/model_37/right1/BiasAdd/ReadVariableOp/^model_39/model_37/right1/Conv2D/ReadVariableOp3^model_39/model_38/conv2d_24/BiasAdd/ReadVariableOp2^model_39/model_38/conv2d_24/Conv2D/ReadVariableOp2^model_39/model_38/dense_26/BiasAdd/ReadVariableOp1^model_39/model_38/dense_26/MatMul/ReadVariableOp1^model_39/model_38/output1/BiasAdd/ReadVariableOp0^model_39/model_38/output1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2f
1model_39/model_37/dense_25/BiasAdd/ReadVariableOp1model_39/model_37/dense_25/BiasAdd/ReadVariableOp2d
0model_39/model_37/dense_25/MatMul/ReadVariableOp0model_39/model_37/dense_25/MatMul/ReadVariableOp2^
-model_39/model_37/left/BiasAdd/ReadVariableOp-model_39/model_37/left/BiasAdd/ReadVariableOp2\
,model_39/model_37/left/Conv2D/ReadVariableOp,model_39/model_37/left/Conv2D/ReadVariableOp2`
.model_39/model_37/left1/BiasAdd/ReadVariableOp.model_39/model_37/left1/BiasAdd/ReadVariableOp2^
-model_39/model_37/left1/Conv2D/ReadVariableOp-model_39/model_37/left1/Conv2D/ReadVariableOp2^
-model_39/model_37/mid1/BiasAdd/ReadVariableOp-model_39/model_37/mid1/BiasAdd/ReadVariableOp2\
,model_39/model_37/mid1/Conv2D/ReadVariableOp,model_39/model_37/mid1/Conv2D/ReadVariableOp2d
0model_39/model_37/output1/BiasAdd/ReadVariableOp0model_39/model_37/output1/BiasAdd/ReadVariableOp2b
/model_39/model_37/output1/MatMul/ReadVariableOp/model_39/model_37/output1/MatMul/ReadVariableOp2`
.model_39/model_37/right/BiasAdd/ReadVariableOp.model_39/model_37/right/BiasAdd/ReadVariableOp2^
-model_39/model_37/right/Conv2D/ReadVariableOp-model_39/model_37/right/Conv2D/ReadVariableOp2b
/model_39/model_37/right1/BiasAdd/ReadVariableOp/model_39/model_37/right1/BiasAdd/ReadVariableOp2`
.model_39/model_37/right1/Conv2D/ReadVariableOp.model_39/model_37/right1/Conv2D/ReadVariableOp2h
2model_39/model_38/conv2d_24/BiasAdd/ReadVariableOp2model_39/model_38/conv2d_24/BiasAdd/ReadVariableOp2f
1model_39/model_38/conv2d_24/Conv2D/ReadVariableOp1model_39/model_38/conv2d_24/Conv2D/ReadVariableOp2f
1model_39/model_38/dense_26/BiasAdd/ReadVariableOp1model_39/model_38/dense_26/BiasAdd/ReadVariableOp2d
0model_39/model_38/dense_26/MatMul/ReadVariableOp0model_39/model_38/dense_26/MatMul/ReadVariableOp2d
0model_39/model_38/output1/BiasAdd/ReadVariableOp0model_39/model_38/output1/BiasAdd/ReadVariableOp2b
/model_39/model_38/output1/MatMul/ReadVariableOp/model_39/model_38/output1/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297702

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_38_layer_call_fn_297830

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296343?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_37_layer_call_fn_297697

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
?
*__inference_conv2d_24_layer_call_fn_297814

inputs!
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?

?
C__inference_output1_layer_call_and_return_conditional_losses_297896

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
C__inference_output1_layer_call_and_return_conditional_losses_295939

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297707

inputs
identity?
MaxPoolMaxPoolinputs*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
a
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:?????????  ?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
G
+__inference_flatten_25_layer_call_fn_297759

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_38_layer_call_fn_297835

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?-
"__inference__traced_restore_298381
file_prefix$
assignvariableop_adam_iter:	 (
assignvariableop_1_adam_beta_1: (
assignvariableop_2_adam_beta_2: '
assignvariableop_3_adam_decay: /
%assignvariableop_4_adam_learning_rate: 8
assignvariableop_5_left_kernel:@*
assignvariableop_6_left_bias:@:
 assignvariableop_7_right1_kernel:@,
assignvariableop_8_right1_bias:@:
assignvariableop_9_left1_kernel:@?-
assignvariableop_10_left1_bias:	?;
 assignvariableop_11_right_kernel:@?-
assignvariableop_12_right_bias:	?:
assignvariableop_13_mid1_kernel:?@+
assignvariableop_14_mid1_bias:@7
#assignvariableop_15_dense_25_kernel:
?? /
!assignvariableop_16_dense_25_bias: 4
"assignvariableop_17_output1_kernel: .
 assignvariableop_18_output1_bias:>
$assignvariableop_19_conv2d_24_kernel:@ 0
"assignvariableop_20_conv2d_24_bias: 6
#assignvariableop_21_dense_26_kernel:	?8 /
!assignvariableop_22_dense_26_bias: 6
$assignvariableop_23_output1_kernel_1: 0
"assignvariableop_24_output1_bias_1:#
assignvariableop_25_total: #
assignvariableop_26_count: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: %
assignvariableop_29_total_2: %
assignvariableop_30_count_2: %
assignvariableop_31_total_3: %
assignvariableop_32_count_3: %
assignvariableop_33_total_4: %
assignvariableop_34_count_4: @
&assignvariableop_35_adam_left_kernel_m:@2
$assignvariableop_36_adam_left_bias_m:@B
(assignvariableop_37_adam_right1_kernel_m:@4
&assignvariableop_38_adam_right1_bias_m:@B
'assignvariableop_39_adam_left1_kernel_m:@?4
%assignvariableop_40_adam_left1_bias_m:	?B
'assignvariableop_41_adam_right_kernel_m:@?4
%assignvariableop_42_adam_right_bias_m:	?A
&assignvariableop_43_adam_mid1_kernel_m:?@2
$assignvariableop_44_adam_mid1_bias_m:@>
*assignvariableop_45_adam_dense_25_kernel_m:
?? 6
(assignvariableop_46_adam_dense_25_bias_m: ;
)assignvariableop_47_adam_output1_kernel_m: 5
'assignvariableop_48_adam_output1_bias_m:E
+assignvariableop_49_adam_conv2d_24_kernel_m:@ 7
)assignvariableop_50_adam_conv2d_24_bias_m: =
*assignvariableop_51_adam_dense_26_kernel_m:	?8 6
(assignvariableop_52_adam_dense_26_bias_m: =
+assignvariableop_53_adam_output1_kernel_m_1: 7
)assignvariableop_54_adam_output1_bias_m_1:@
&assignvariableop_55_adam_left_kernel_v:@2
$assignvariableop_56_adam_left_bias_v:@B
(assignvariableop_57_adam_right1_kernel_v:@4
&assignvariableop_58_adam_right1_bias_v:@B
'assignvariableop_59_adam_left1_kernel_v:@?4
%assignvariableop_60_adam_left1_bias_v:	?B
'assignvariableop_61_adam_right_kernel_v:@?4
%assignvariableop_62_adam_right_bias_v:	?A
&assignvariableop_63_adam_mid1_kernel_v:?@2
$assignvariableop_64_adam_mid1_bias_v:@>
*assignvariableop_65_adam_dense_25_kernel_v:
?? 6
(assignvariableop_66_adam_dense_25_bias_v: ;
)assignvariableop_67_adam_output1_kernel_v: 5
'assignvariableop_68_adam_output1_bias_v:E
+assignvariableop_69_adam_conv2d_24_kernel_v:@ 7
)assignvariableop_70_adam_conv2d_24_bias_v: =
*assignvariableop_71_adam_dense_26_kernel_v:	?8 6
(assignvariableop_72_adam_dense_26_bias_v: =
+assignvariableop_73_adam_output1_kernel_v_1: 7
)assignvariableop_74_adam_output1_bias_v_1:
identity_76??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_8?AssignVariableOp_9?"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?"
value?"B?"LB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Z
dtypesP
N2L	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_adam_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_adam_beta_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_beta_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_decayIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp%assignvariableop_4_adam_learning_rateIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_left_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_left_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp assignvariableop_7_right1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_right1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_left1_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_left1_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp assignvariableop_11_right_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_right_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_mid1_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_mid1_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_25_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp!assignvariableop_16_dense_25_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp"assignvariableop_17_output1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp assignvariableop_18_output1_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp$assignvariableop_19_conv2d_24_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_conv2d_24_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_26_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp!assignvariableop_22_dense_26_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp$assignvariableop_23_output1_kernel_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_output1_bias_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_2Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_3Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_3Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_4Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_4Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_left_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp$assignvariableop_36_adam_left_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_right1_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_right1_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_left1_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_left1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp'assignvariableop_41_adam_right_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp%assignvariableop_42_adam_right_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp&assignvariableop_43_adam_mid1_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_adam_mid1_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_dense_25_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_dense_25_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_output1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_output1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_24_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_24_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_26_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_26_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_output1_kernel_m_1Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_output1_bias_m_1Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_left_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp$assignvariableop_56_adam_left_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_right1_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp&assignvariableop_58_adam_right1_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_left1_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp%assignvariableop_60_adam_left1_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_right_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp%assignvariableop_62_adam_right_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp&assignvariableop_63_adam_mid1_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp$assignvariableop_64_adam_mid1_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_25_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_25_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_output1_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_output1_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_24_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_24_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_dense_26_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_dense_26_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_output1_kernel_v_1Identity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_output1_bias_v_1Identity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_75Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_76IdentityIdentity_75:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_76Identity_76:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
d
F__inference_dropout_16_layer_call_and_return_conditional_losses_297742

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????  @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?	
?
)__inference_model_38_layer_call_fn_297522

inputs!
unknown:@ 
	unknown_0: 
	unknown_1:	?8 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296419o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
? 
?
D__inference_model_38_layer_call_and_return_conditional_losses_297567

inputsB
(conv2d_24_conv2d_readvariableop_resource:@ 7
)conv2d_24_biasadd_readvariableop_resource: :
'dense_26_matmul_readvariableop_resource:	?8 6
(dense_26_biasadd_readvariableop_resource: 8
&output1_matmul_readvariableop_resource: 5
'output1_biasadd_readvariableop_resource:
identity?? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?output1/BiasAdd/ReadVariableOp?output1/MatMul/ReadVariableOp?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
max_pooling2d_38/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
a
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_26/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????8?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0?
dense_26/MatMulMatMulflatten_26/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
output1/MatMul/ReadVariableOpReadVariableOp&output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
output1/MatMulMatMuldense_26/Relu:activations:0%output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output1/BiasAdd/ReadVariableOpReadVariableOp'output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output1/BiasAddBiasAddoutput1/MatMul:product:0&output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
output1/SoftmaxSoftmaxoutput1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentityoutput1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^output1/BiasAdd/ReadVariableOp^output1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2@
output1/BiasAdd/ReadVariableOpoutput1/BiasAdd/ReadVariableOp2>
output1/MatMul/ReadVariableOpoutput1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
? 
?
D__inference_model_38_layer_call_and_return_conditional_losses_297595

inputsB
(conv2d_24_conv2d_readvariableop_resource:@ 7
)conv2d_24_biasadd_readvariableop_resource: :
'dense_26_matmul_readvariableop_resource:	?8 6
(dense_26_biasadd_readvariableop_resource: 8
&output1_matmul_readvariableop_resource: 5
'output1_biasadd_readvariableop_resource:
identity?? conv2d_24/BiasAdd/ReadVariableOp?conv2d_24/Conv2D/ReadVariableOp?dense_26/BiasAdd/ReadVariableOp?dense_26/MatMul/ReadVariableOp?output1/BiasAdd/ReadVariableOp?output1/MatMul/ReadVariableOp?
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
conv2d_24/Conv2DConv2Dinputs'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
max_pooling2d_38/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
a
flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_26/ReshapeReshape!max_pooling2d_38/MaxPool:output:0flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????8?
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0?
dense_26/MatMulMatMulflatten_26/Reshape:output:0&dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
output1/MatMul/ReadVariableOpReadVariableOp&output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
output1/MatMulMatMuldense_26/Relu:activations:0%output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output1/BiasAdd/ReadVariableOpReadVariableOp'output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output1/BiasAddBiasAddoutput1/MatMul:product:0&output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
output1/SoftmaxSoftmaxoutput1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentityoutput1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp^output1/BiasAdd/ReadVariableOp^output1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp2@
output1/BiasAdd/ReadVariableOpoutput1/BiasAdd/ReadVariableOp2>
output1/MatMul/ReadVariableOpoutput1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
)__inference_model_39_layer_call_fn_297083
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:$

unknown_13:@ 

unknown_14: 

unknown_15:	?8 

unknown_16: 

unknown_17: 

unknown_18:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_39_layer_call_and_return_conditional_losses_296643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
?
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
D__inference_model_39_layer_call_and_return_conditional_losses_296979
input_66
input_67)
model_37_296934:@
model_37_296936:@)
model_37_296938:@
model_37_296940:@*
model_37_296942:@?
model_37_296944:	?*
model_37_296946:@?
model_37_296948:	?*
model_37_296950:?@
model_37_296952:@#
model_37_296954:
?? 
model_37_296956: !
model_37_296958: 
model_37_296960:)
model_38_296964:@ 
model_38_296966: "
model_38_296968:	?8 
model_38_296970: !
model_38_296972: 
model_38_296974:
identity

identity_1?? model_37/StatefulPartitionedCall? model_38/StatefulPartitionedCall?
 model_37/StatefulPartitionedCallStatefulPartitionedCallinput_66input_67model_37_296934model_37_296936model_37_296938model_37_296940model_37_296942model_37_296944model_37_296946model_37_296948model_37_296950model_37_296952model_37_296954model_37_296956model_37_296958model_37_296960*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_296175?
 model_38/StatefulPartitionedCallStatefulPartitionedCall)model_37/StatefulPartitionedCall:output:0model_38_296964model_38_296966model_38_296968model_38_296970model_38_296972model_38_296974*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296515x
IdentityIdentity)model_37/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????z

Identity_1Identity)model_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^model_37/StatefulPartitionedCall!^model_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2D
 model_37/StatefulPartitionedCall model_37/StatefulPartitionedCall2D
 model_38/StatefulPartitionedCall model_38/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_66:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_67
?
p
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871

inputs
inputs_1
identity_
MaximumMaximuminputsinputs_1*
T0*0
_output_shapes
:?????????@@?\
IdentityIdentityMaximum:z:0*
T0*0
_output_shapes
:?????????@@?"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:?????????@@?:?????????@@?:X T
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs:XT
0
_output_shapes
:?????????@@?
 
_user_specified_nameinputs
?
?
@__inference_mid1_layer_call_and_return_conditional_losses_297727

inputs9
conv2d_readvariableop_resource:?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????  @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????  @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????  ?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????  ?
 
_user_specified_nameinputs
?
b
F__inference_flatten_26_layer_call_and_return_conditional_losses_297856

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????8Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????8"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
(__inference_output1_layer_call_fn_297885

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_296412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
M
1__inference_max_pooling2d_37_layer_call_fn_297692

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295785?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
E__inference_conv2d_24_layer_call_and_return_conditional_losses_297825

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?3
?
D__inference_model_37_layer_call_and_return_conditional_losses_296334
input_63
input_64'
right1_296293:@
right1_296295:@%
left_296298:@
left_296300:@'
left1_296303:@?
left1_296305:	?'
right_296308:@?
right_296310:	?&
mid1_296315:?@
mid1_296317:@#
dense_25_296322:
?? 
dense_25_296324:  
output1_296327: 
output1_296329:
identity

identity_1?? dense_25/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?left/StatefulPartitionedCall?left1/StatefulPartitionedCall?mid1/StatefulPartitionedCall?output1/StatefulPartitionedCall?right/StatefulPartitionedCall?right1/StatefulPartitionedCall?
right1/StatefulPartitionedCallStatefulPartitionedCallinput_63right1_296293right1_296295*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_right1_layer_call_and_return_conditional_losses_295808?
left/StatefulPartitionedCallStatefulPartitionedCallinput_64left_296298left_296300*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_left_layer_call_and_return_conditional_losses_295825?
left1/StatefulPartitionedCallStatefulPartitionedCall%left/StatefulPartitionedCall:output:0left1_296303left1_296305*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_left1_layer_call_and_return_conditional_losses_295842?
right/StatefulPartitionedCallStatefulPartitionedCall'right1/StatefulPartitionedCall:output:0right_296308right_296310*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_right_layer_call_and_return_conditional_losses_295859?
maximum_13/PartitionedCallPartitionedCall&left1/StatefulPartitionedCall:output:0&right/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871?
 max_pooling2d_37/PartitionedCallPartitionedCall#maximum_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877?
mid1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0mid1_296315mid1_296317*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_mid1_layer_call_and_return_conditional_losses_295890?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall%mid1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_296026?
flatten_25/PartitionedCallPartitionedCall+dropout_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_25_296322dense_25_296324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_295922?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0output1_296327output1_296329*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_295939?
IdentityIdentity+dropout_16/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @y

Identity_1Identity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_25/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall^left/StatefulPartitionedCall^left1/StatefulPartitionedCall^mid1/StatefulPartitionedCall ^output1/StatefulPartitionedCall^right/StatefulPartitionedCall^right1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2<
left/StatefulPartitionedCallleft/StatefulPartitionedCall2>
left1/StatefulPartitionedCallleft1/StatefulPartitionedCall2<
mid1/StatefulPartitionedCallmid1/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall2>
right/StatefulPartitionedCallright/StatefulPartitionedCall2@
right1/StatefulPartitionedCallright1/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_63:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_64
?
G
+__inference_flatten_26_layer_call_fn_297850

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????8"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_26_layer_call_and_return_conditional_losses_297876

inputs1
matmul_readvariableop_resource:	?8 -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????8: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????8
 
_user_specified_nameinputs
?
b
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????8Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????8"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?3
?
D__inference_model_37_layer_call_and_return_conditional_losses_296175

inputs
inputs_1'
right1_296134:@
right1_296136:@%
left_296139:@
left_296141:@'
left1_296144:@?
left1_296146:	?'
right_296149:@?
right_296151:	?&
mid1_296156:?@
mid1_296158:@#
dense_25_296163:
?? 
dense_25_296165:  
output1_296168: 
output1_296170:
identity

identity_1?? dense_25/StatefulPartitionedCall?"dropout_16/StatefulPartitionedCall?left/StatefulPartitionedCall?left1/StatefulPartitionedCall?mid1/StatefulPartitionedCall?output1/StatefulPartitionedCall?right/StatefulPartitionedCall?right1/StatefulPartitionedCall?
right1/StatefulPartitionedCallStatefulPartitionedCallinputsright1_296134right1_296136*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_right1_layer_call_and_return_conditional_losses_295808?
left/StatefulPartitionedCallStatefulPartitionedCallinputs_1left_296139left_296141*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_left_layer_call_and_return_conditional_losses_295825?
left1/StatefulPartitionedCallStatefulPartitionedCall%left/StatefulPartitionedCall:output:0left1_296144left1_296146*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_left1_layer_call_and_return_conditional_losses_295842?
right/StatefulPartitionedCallStatefulPartitionedCall'right1/StatefulPartitionedCall:output:0right_296149right_296151*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_right_layer_call_and_return_conditional_losses_295859?
maximum_13/PartitionedCallPartitionedCall&left1/StatefulPartitionedCall:output:0&right/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871?
 max_pooling2d_37/PartitionedCallPartitionedCall#maximum_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877?
mid1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0mid1_296156mid1_296158*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_mid1_layer_call_and_return_conditional_losses_295890?
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall%mid1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_296026?
flatten_25/PartitionedCallPartitionedCall+dropout_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_25_296163dense_25_296165*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_295922?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0output1_296168output1_296170*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_295939?
IdentityIdentity+dropout_16/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @y

Identity_1Identity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_25/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall^left/StatefulPartitionedCall^left1/StatefulPartitionedCall^mid1/StatefulPartitionedCall ^output1/StatefulPartitionedCall^right/StatefulPartitionedCall^right1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2<
left/StatefulPartitionedCallleft/StatefulPartitionedCall2>
left1/StatefulPartitionedCallleft1/StatefulPartitionedCall2<
mid1/StatefulPartitionedCallmid1/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall2>
right/StatefulPartitionedCallright/StatefulPartitionedCall2@
right1/StatefulPartitionedCallright1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
)__inference_model_37_layer_call_fn_297342
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_295947w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
?
D__inference_model_39_layer_call_and_return_conditional_losses_296788

inputs
inputs_1)
model_37_296743:@
model_37_296745:@)
model_37_296747:@
model_37_296749:@*
model_37_296751:@?
model_37_296753:	?*
model_37_296755:@?
model_37_296757:	?*
model_37_296759:?@
model_37_296761:@#
model_37_296763:
?? 
model_37_296765: !
model_37_296767: 
model_37_296769:)
model_38_296773:@ 
model_38_296775: "
model_38_296777:	?8 
model_38_296779: !
model_38_296781: 
model_38_296783:
identity

identity_1?? model_37/StatefulPartitionedCall? model_38/StatefulPartitionedCall?
 model_37/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1model_37_296743model_37_296745model_37_296747model_37_296749model_37_296751model_37_296753model_37_296755model_37_296757model_37_296759model_37_296761model_37_296763model_37_296765model_37_296767model_37_296769*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_296175?
 model_38/StatefulPartitionedCallStatefulPartitionedCall)model_37/StatefulPartitionedCall:output:0model_38_296773model_38_296775model_38_296777model_38_296779model_38_296781model_38_296783*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296515x
IdentityIdentity)model_37/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????z

Identity_1Identity)model_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^model_37/StatefulPartitionedCall!^model_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2D
 model_37/StatefulPartitionedCall model_37/StatefulPartitionedCall2D
 model_38/StatefulPartitionedCall model_38/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?M
?

D__inference_model_37_layer_call_and_return_conditional_losses_297505
inputs_0
inputs_1?
%right1_conv2d_readvariableop_resource:@4
&right1_biasadd_readvariableop_resource:@=
#left_conv2d_readvariableop_resource:@2
$left_biasadd_readvariableop_resource:@?
$left1_conv2d_readvariableop_resource:@?4
%left1_biasadd_readvariableop_resource:	??
$right_conv2d_readvariableop_resource:@?4
%right_biasadd_readvariableop_resource:	?>
#mid1_conv2d_readvariableop_resource:?@2
$mid1_biasadd_readvariableop_resource:@;
'dense_25_matmul_readvariableop_resource:
?? 6
(dense_25_biasadd_readvariableop_resource: 8
&output1_matmul_readvariableop_resource: 5
'output1_biasadd_readvariableop_resource:
identity

identity_1??dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?left/BiasAdd/ReadVariableOp?left/Conv2D/ReadVariableOp?left1/BiasAdd/ReadVariableOp?left1/Conv2D/ReadVariableOp?mid1/BiasAdd/ReadVariableOp?mid1/Conv2D/ReadVariableOp?output1/BiasAdd/ReadVariableOp?output1/MatMul/ReadVariableOp?right/BiasAdd/ReadVariableOp?right/Conv2D/ReadVariableOp?right1/BiasAdd/ReadVariableOp?right1/Conv2D/ReadVariableOp?
right1/Conv2D/ReadVariableOpReadVariableOp%right1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
right1/Conv2DConv2Dinputs_0$right1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
right1/BiasAdd/ReadVariableOpReadVariableOp&right1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
right1/BiasAddBiasAddright1/Conv2D:output:0%right1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@f
right1/ReluReluright1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
left/Conv2D/ReadVariableOpReadVariableOp#left_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
left/Conv2DConv2Dinputs_1"left/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
|
left/BiasAdd/ReadVariableOpReadVariableOp$left_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
left/BiasAddBiasAddleft/Conv2D:output:0#left/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@b
	left/ReluReluleft/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
left1/Conv2D/ReadVariableOpReadVariableOp$left1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
left1/Conv2DConv2Dleft/Relu:activations:0#left1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides

left1/BiasAdd/ReadVariableOpReadVariableOp%left1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
left1/BiasAddBiasAddleft1/Conv2D:output:0$left1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?e

left1/ReluReluleft1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
right/Conv2D/ReadVariableOpReadVariableOp$right_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
right/Conv2DConv2Dright1/Relu:activations:0#right/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides

right/BiasAdd/ReadVariableOpReadVariableOp%right_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
right/BiasAddBiasAddright/Conv2D:output:0$right/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?e

right/ReluReluright/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
maximum_13/MaximumMaximumleft1/Relu:activations:0right/Relu:activations:0*
T0*0
_output_shapes
:?????????@@??
max_pooling2d_37/MaxPoolMaxPoolmaximum_13/Maximum:z:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
?
mid1/Conv2D/ReadVariableOpReadVariableOp#mid1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
mid1/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0"mid1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
|
mid1/BiasAdd/ReadVariableOpReadVariableOp$mid1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
mid1/BiasAddBiasAddmid1/Conv2D:output:0#mid1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @b
	mid1/ReluRelumid1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @]
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
dropout_16/dropout/MulMulmid1/Relu:activations:0!dropout_16/dropout/Const:output:0*
T0*/
_output_shapes
:?????????  @_
dropout_16/dropout/ShapeShapemid1/Relu:activations:0*
T0*
_output_shapes
:?
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????  @*
dtype0f
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  @?
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  @?
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  @a
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_25/ReshapeReshapedropout_16/dropout/Mul_1:z:0flatten_25/Const:output:0*
T0*)
_output_shapes
:????????????
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0?
dense_25/MatMulMatMulflatten_25/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
output1/MatMul/ReadVariableOpReadVariableOp&output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
output1/MatMulMatMuldense_25/Relu:activations:0%output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output1/BiasAdd/ReadVariableOpReadVariableOp'output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output1/BiasAddBiasAddoutput1/MatMul:product:0&output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
output1/SoftmaxSoftmaxoutput1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentitydropout_16/dropout/Mul_1:z:0^NoOp*
T0*/
_output_shapes
:?????????  @j

Identity_1Identityoutput1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp^left/BiasAdd/ReadVariableOp^left/Conv2D/ReadVariableOp^left1/BiasAdd/ReadVariableOp^left1/Conv2D/ReadVariableOp^mid1/BiasAdd/ReadVariableOp^mid1/Conv2D/ReadVariableOp^output1/BiasAdd/ReadVariableOp^output1/MatMul/ReadVariableOp^right/BiasAdd/ReadVariableOp^right/Conv2D/ReadVariableOp^right1/BiasAdd/ReadVariableOp^right1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2:
left/BiasAdd/ReadVariableOpleft/BiasAdd/ReadVariableOp28
left/Conv2D/ReadVariableOpleft/Conv2D/ReadVariableOp2<
left1/BiasAdd/ReadVariableOpleft1/BiasAdd/ReadVariableOp2:
left1/Conv2D/ReadVariableOpleft1/Conv2D/ReadVariableOp2:
mid1/BiasAdd/ReadVariableOpmid1/BiasAdd/ReadVariableOp28
mid1/Conv2D/ReadVariableOpmid1/Conv2D/ReadVariableOp2@
output1/BiasAdd/ReadVariableOpoutput1/BiasAdd/ReadVariableOp2>
output1/MatMul/ReadVariableOpoutput1/MatMul/ReadVariableOp2<
right/BiasAdd/ReadVariableOpright/BiasAdd/ReadVariableOp2:
right/Conv2D/ReadVariableOpright/Conv2D/ReadVariableOp2>
right1/BiasAdd/ReadVariableOpright1/BiasAdd/ReadVariableOp2<
right1/Conv2D/ReadVariableOpright1/Conv2D/ReadVariableOp:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?{
?
D__inference_model_39_layer_call_and_return_conditional_losses_297306
inputs_0
inputs_1H
.model_37_right1_conv2d_readvariableop_resource:@=
/model_37_right1_biasadd_readvariableop_resource:@F
,model_37_left_conv2d_readvariableop_resource:@;
-model_37_left_biasadd_readvariableop_resource:@H
-model_37_left1_conv2d_readvariableop_resource:@?=
.model_37_left1_biasadd_readvariableop_resource:	?H
-model_37_right_conv2d_readvariableop_resource:@?=
.model_37_right_biasadd_readvariableop_resource:	?G
,model_37_mid1_conv2d_readvariableop_resource:?@;
-model_37_mid1_biasadd_readvariableop_resource:@D
0model_37_dense_25_matmul_readvariableop_resource:
?? ?
1model_37_dense_25_biasadd_readvariableop_resource: A
/model_37_output1_matmul_readvariableop_resource: >
0model_37_output1_biasadd_readvariableop_resource:K
1model_38_conv2d_24_conv2d_readvariableop_resource:@ @
2model_38_conv2d_24_biasadd_readvariableop_resource: C
0model_38_dense_26_matmul_readvariableop_resource:	?8 ?
1model_38_dense_26_biasadd_readvariableop_resource: A
/model_38_output1_matmul_readvariableop_resource: >
0model_38_output1_biasadd_readvariableop_resource:
identity

identity_1??(model_37/dense_25/BiasAdd/ReadVariableOp?'model_37/dense_25/MatMul/ReadVariableOp?$model_37/left/BiasAdd/ReadVariableOp?#model_37/left/Conv2D/ReadVariableOp?%model_37/left1/BiasAdd/ReadVariableOp?$model_37/left1/Conv2D/ReadVariableOp?$model_37/mid1/BiasAdd/ReadVariableOp?#model_37/mid1/Conv2D/ReadVariableOp?'model_37/output1/BiasAdd/ReadVariableOp?&model_37/output1/MatMul/ReadVariableOp?%model_37/right/BiasAdd/ReadVariableOp?$model_37/right/Conv2D/ReadVariableOp?&model_37/right1/BiasAdd/ReadVariableOp?%model_37/right1/Conv2D/ReadVariableOp?)model_38/conv2d_24/BiasAdd/ReadVariableOp?(model_38/conv2d_24/Conv2D/ReadVariableOp?(model_38/dense_26/BiasAdd/ReadVariableOp?'model_38/dense_26/MatMul/ReadVariableOp?'model_38/output1/BiasAdd/ReadVariableOp?&model_38/output1/MatMul/ReadVariableOp?
%model_37/right1/Conv2D/ReadVariableOpReadVariableOp.model_37_right1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_37/right1/Conv2DConv2Dinputs_0-model_37/right1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
&model_37/right1/BiasAdd/ReadVariableOpReadVariableOp/model_37_right1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/right1/BiasAddBiasAddmodel_37/right1/Conv2D:output:0.model_37/right1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@x
model_37/right1/ReluRelu model_37/right1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
#model_37/left/Conv2D/ReadVariableOpReadVariableOp,model_37_left_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
model_37/left/Conv2DConv2Dinputs_1+model_37/left/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
$model_37/left/BiasAdd/ReadVariableOpReadVariableOp-model_37_left_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/left/BiasAddBiasAddmodel_37/left/Conv2D:output:0,model_37/left/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@t
model_37/left/ReluRelumodel_37/left/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
$model_37/left1/Conv2D/ReadVariableOpReadVariableOp-model_37_left1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_37/left1/Conv2DConv2D model_37/left/Relu:activations:0,model_37/left1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
%model_37/left1/BiasAdd/ReadVariableOpReadVariableOp.model_37_left1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_37/left1/BiasAddBiasAddmodel_37/left1/Conv2D:output:0-model_37/left1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?w
model_37/left1/ReluRelumodel_37/left1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
$model_37/right/Conv2D/ReadVariableOpReadVariableOp-model_37_right_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
model_37/right/Conv2DConv2D"model_37/right1/Relu:activations:0,model_37/right/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides
?
%model_37/right/BiasAdd/ReadVariableOpReadVariableOp.model_37_right_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_37/right/BiasAddBiasAddmodel_37/right/Conv2D:output:0-model_37/right/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?w
model_37/right/ReluRelumodel_37/right/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
model_37/maximum_13/MaximumMaximum!model_37/left1/Relu:activations:0!model_37/right/Relu:activations:0*
T0*0
_output_shapes
:?????????@@??
!model_37/max_pooling2d_37/MaxPoolMaxPoolmodel_37/maximum_13/Maximum:z:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
?
#model_37/mid1/Conv2D/ReadVariableOpReadVariableOp,model_37_mid1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
model_37/mid1/Conv2DConv2D*model_37/max_pooling2d_37/MaxPool:output:0+model_37/mid1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
?
$model_37/mid1/BiasAdd/ReadVariableOpReadVariableOp-model_37_mid1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_37/mid1/BiasAddBiasAddmodel_37/mid1/Conv2D:output:0,model_37/mid1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @t
model_37/mid1/ReluRelumodel_37/mid1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @f
!model_37/dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
model_37/dropout_16/dropout/MulMul model_37/mid1/Relu:activations:0*model_37/dropout_16/dropout/Const:output:0*
T0*/
_output_shapes
:?????????  @q
!model_37/dropout_16/dropout/ShapeShape model_37/mid1/Relu:activations:0*
T0*
_output_shapes
:?
8model_37/dropout_16/dropout/random_uniform/RandomUniformRandomUniform*model_37/dropout_16/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????  @*
dtype0o
*model_37/dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
(model_37/dropout_16/dropout/GreaterEqualGreaterEqualAmodel_37/dropout_16/dropout/random_uniform/RandomUniform:output:03model_37/dropout_16/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  @?
 model_37/dropout_16/dropout/CastCast,model_37/dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  @?
!model_37/dropout_16/dropout/Mul_1Mul#model_37/dropout_16/dropout/Mul:z:0$model_37/dropout_16/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  @j
model_37/flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_37/flatten_25/ReshapeReshape%model_37/dropout_16/dropout/Mul_1:z:0"model_37/flatten_25/Const:output:0*
T0*)
_output_shapes
:????????????
'model_37/dense_25/MatMul/ReadVariableOpReadVariableOp0model_37_dense_25_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0?
model_37/dense_25/MatMulMatMul$model_37/flatten_25/Reshape:output:0/model_37/dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(model_37/dense_25/BiasAdd/ReadVariableOpReadVariableOp1model_37_dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_37/dense_25/BiasAddBiasAdd"model_37/dense_25/MatMul:product:00model_37/dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
model_37/dense_25/ReluRelu"model_37/dense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
&model_37/output1/MatMul/ReadVariableOpReadVariableOp/model_37_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_37/output1/MatMulMatMul$model_37/dense_25/Relu:activations:0.model_37/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_37/output1/BiasAdd/ReadVariableOpReadVariableOp0model_37_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_37/output1/BiasAddBiasAdd!model_37/output1/MatMul:product:0/model_37/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_37/output1/SoftmaxSoftmax!model_37/output1/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(model_38/conv2d_24/Conv2D/ReadVariableOpReadVariableOp1model_38_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0?
model_38/conv2d_24/Conv2DConv2D%model_37/dropout_16/dropout/Mul_1:z:00model_38/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingVALID*
strides
?
)model_38/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp2model_38_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_38/conv2d_24/BiasAddBiasAdd"model_38/conv2d_24/Conv2D:output:01model_38/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? ~
model_38/conv2d_24/ReluRelu#model_38/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:????????? ?
!model_38/max_pooling2d_38/MaxPoolMaxPool%model_38/conv2d_24/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
j
model_38/flatten_26/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
model_38/flatten_26/ReshapeReshape*model_38/max_pooling2d_38/MaxPool:output:0"model_38/flatten_26/Const:output:0*
T0*(
_output_shapes
:??????????8?
'model_38/dense_26/MatMul/ReadVariableOpReadVariableOp0model_38_dense_26_matmul_readvariableop_resource*
_output_shapes
:	?8 *
dtype0?
model_38/dense_26/MatMulMatMul$model_38/flatten_26/Reshape:output:0/model_38/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
(model_38/dense_26/BiasAdd/ReadVariableOpReadVariableOp1model_38_dense_26_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_38/dense_26/BiasAddBiasAdd"model_38/dense_26/MatMul:product:00model_38/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? t
model_38/dense_26/ReluRelu"model_38/dense_26/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
&model_38/output1/MatMul/ReadVariableOpReadVariableOp/model_38_output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_38/output1/MatMulMatMul$model_38/dense_26/Relu:activations:0.model_38/output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_38/output1/BiasAdd/ReadVariableOpReadVariableOp0model_38_output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_38/output1/BiasAddBiasAdd!model_38/output1/MatMul:product:0/model_38/output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_38/output1/SoftmaxSoftmax!model_38/output1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model_37/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????s

Identity_1Identity"model_38/output1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp)^model_37/dense_25/BiasAdd/ReadVariableOp(^model_37/dense_25/MatMul/ReadVariableOp%^model_37/left/BiasAdd/ReadVariableOp$^model_37/left/Conv2D/ReadVariableOp&^model_37/left1/BiasAdd/ReadVariableOp%^model_37/left1/Conv2D/ReadVariableOp%^model_37/mid1/BiasAdd/ReadVariableOp$^model_37/mid1/Conv2D/ReadVariableOp(^model_37/output1/BiasAdd/ReadVariableOp'^model_37/output1/MatMul/ReadVariableOp&^model_37/right/BiasAdd/ReadVariableOp%^model_37/right/Conv2D/ReadVariableOp'^model_37/right1/BiasAdd/ReadVariableOp&^model_37/right1/Conv2D/ReadVariableOp*^model_38/conv2d_24/BiasAdd/ReadVariableOp)^model_38/conv2d_24/Conv2D/ReadVariableOp)^model_38/dense_26/BiasAdd/ReadVariableOp(^model_38/dense_26/MatMul/ReadVariableOp(^model_38/output1/BiasAdd/ReadVariableOp'^model_38/output1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2T
(model_37/dense_25/BiasAdd/ReadVariableOp(model_37/dense_25/BiasAdd/ReadVariableOp2R
'model_37/dense_25/MatMul/ReadVariableOp'model_37/dense_25/MatMul/ReadVariableOp2L
$model_37/left/BiasAdd/ReadVariableOp$model_37/left/BiasAdd/ReadVariableOp2J
#model_37/left/Conv2D/ReadVariableOp#model_37/left/Conv2D/ReadVariableOp2N
%model_37/left1/BiasAdd/ReadVariableOp%model_37/left1/BiasAdd/ReadVariableOp2L
$model_37/left1/Conv2D/ReadVariableOp$model_37/left1/Conv2D/ReadVariableOp2L
$model_37/mid1/BiasAdd/ReadVariableOp$model_37/mid1/BiasAdd/ReadVariableOp2J
#model_37/mid1/Conv2D/ReadVariableOp#model_37/mid1/Conv2D/ReadVariableOp2R
'model_37/output1/BiasAdd/ReadVariableOp'model_37/output1/BiasAdd/ReadVariableOp2P
&model_37/output1/MatMul/ReadVariableOp&model_37/output1/MatMul/ReadVariableOp2N
%model_37/right/BiasAdd/ReadVariableOp%model_37/right/BiasAdd/ReadVariableOp2L
$model_37/right/Conv2D/ReadVariableOp$model_37/right/Conv2D/ReadVariableOp2P
&model_37/right1/BiasAdd/ReadVariableOp&model_37/right1/BiasAdd/ReadVariableOp2N
%model_37/right1/Conv2D/ReadVariableOp%model_37/right1/Conv2D/ReadVariableOp2V
)model_38/conv2d_24/BiasAdd/ReadVariableOp)model_38/conv2d_24/BiasAdd/ReadVariableOp2T
(model_38/conv2d_24/Conv2D/ReadVariableOp(model_38/conv2d_24/Conv2D/ReadVariableOp2T
(model_38/dense_26/BiasAdd/ReadVariableOp(model_38/dense_26/BiasAdd/ReadVariableOp2R
'model_38/dense_26/MatMul/ReadVariableOp'model_38/dense_26/MatMul/ReadVariableOp2R
'model_38/output1/BiasAdd/ReadVariableOp'model_38/output1/BiasAdd/ReadVariableOp2P
&model_38/output1/MatMul/ReadVariableOp&model_38/output1/MatMul/ReadVariableOp:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?	
?
)__inference_model_38_layer_call_fn_296547
input_65!
unknown:@ 
	unknown_0: 
	unknown_1:	?8 
	unknown_2: 
	unknown_3: 
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_65unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????  @
"
_user_specified_name
input_65
?
b
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
'__inference_right1_layer_call_fn_297624

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_right1_layer_call_and_return_conditional_losses_295808w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
%__inference_left_layer_call_fn_297604

inputs!
unknown:@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_left_layer_call_and_return_conditional_losses_295825w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?

e
F__inference_dropout_16_layer_call_and_return_conditional_losses_297754

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????  @C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????  @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  @w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  @q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  @a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????  @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?2
?
D__inference_model_37_layer_call_and_return_conditional_losses_296289
input_63
input_64'
right1_296248:@
right1_296250:@%
left_296253:@
left_296255:@'
left1_296258:@?
left1_296260:	?'
right_296263:@?
right_296265:	?&
mid1_296270:?@
mid1_296272:@#
dense_25_296277:
?? 
dense_25_296279:  
output1_296282: 
output1_296284:
identity

identity_1?? dense_25/StatefulPartitionedCall?left/StatefulPartitionedCall?left1/StatefulPartitionedCall?mid1/StatefulPartitionedCall?output1/StatefulPartitionedCall?right/StatefulPartitionedCall?right1/StatefulPartitionedCall?
right1/StatefulPartitionedCallStatefulPartitionedCallinput_63right1_296248right1_296250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_right1_layer_call_and_return_conditional_losses_295808?
left/StatefulPartitionedCallStatefulPartitionedCallinput_64left_296253left_296255*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_left_layer_call_and_return_conditional_losses_295825?
left1/StatefulPartitionedCallStatefulPartitionedCall%left/StatefulPartitionedCall:output:0left1_296258left1_296260*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_left1_layer_call_and_return_conditional_losses_295842?
right/StatefulPartitionedCallStatefulPartitionedCall'right1/StatefulPartitionedCall:output:0right_296263right_296265*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_right_layer_call_and_return_conditional_losses_295859?
maximum_13/PartitionedCallPartitionedCall&left1/StatefulPartitionedCall:output:0&right/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????@@?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_maximum_13_layer_call_and_return_conditional_losses_295871?
 max_pooling2d_37/PartitionedCallPartitionedCall#maximum_13/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????  ?* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295877?
mid1/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0mid1_296270mid1_296272*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_mid1_layer_call_and_return_conditional_losses_295890?
dropout_16/PartitionedCallPartitionedCall%mid1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_dropout_16_layer_call_and_return_conditional_losses_295901?
flatten_25/PartitionedCallPartitionedCall#dropout_16/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_25_layer_call_and_return_conditional_losses_295909?
 dense_25/StatefulPartitionedCallStatefulPartitionedCall#flatten_25/PartitionedCall:output:0dense_25_296277dense_25_296279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_25_layer_call_and_return_conditional_losses_295922?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_25/StatefulPartitionedCall:output:0output1_296282output1_296284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_295939z
IdentityIdentity#dropout_16/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @y

Identity_1Identity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_25/StatefulPartitionedCall^left/StatefulPartitionedCall^left1/StatefulPartitionedCall^mid1/StatefulPartitionedCall ^output1/StatefulPartitionedCall^right/StatefulPartitionedCall^right1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2D
 dense_25/StatefulPartitionedCall dense_25/StatefulPartitionedCall2<
left/StatefulPartitionedCallleft/StatefulPartitionedCall2>
left1/StatefulPartitionedCallleft1/StatefulPartitionedCall2<
mid1/StatefulPartitionedCallmid1/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall2>
right/StatefulPartitionedCallright/StatefulPartitionedCall2@
right1/StatefulPartitionedCallright1/StatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
input_63:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
input_64
?
?
B__inference_right1_layer_call_and_return_conditional_losses_295808

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????@@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
d
F__inference_dropout_16_layer_call_and_return_conditional_losses_295901

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????  @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
?
)__inference_model_37_layer_call_fn_297378
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_296175w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  @q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297845

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
)__inference_model_39_layer_call_fn_297131
inputs_0
inputs_1!
unknown:@
	unknown_0:@#
	unknown_1:@
	unknown_2:@$
	unknown_3:@?
	unknown_4:	?$
	unknown_5:@?
	unknown_6:	?$
	unknown_7:?@
	unknown_8:@
	unknown_9:
?? 

unknown_10: 

unknown_11: 

unknown_12:$

unknown_13:@ 

unknown_14: 

unknown_15:	?8 

unknown_16: 

unknown_17: 

unknown_18:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18*!
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_39_layer_call_and_return_conditional_losses_296788o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
b
F__inference_flatten_25_layer_call_and_return_conditional_losses_297765

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  @:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:????????? "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:????????? :W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
h
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_295785

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
)__inference_dense_26_layer_call_fn_297865

inputs
unknown:	?8 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_296395o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????8: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????8
 
_user_specified_nameinputs
??
?
__inference__traced_save_298146
file_prefix(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop*
&savev2_left_kernel_read_readvariableop(
$savev2_left_bias_read_readvariableop,
(savev2_right1_kernel_read_readvariableop*
&savev2_right1_bias_read_readvariableop+
'savev2_left1_kernel_read_readvariableop)
%savev2_left1_bias_read_readvariableop+
'savev2_right_kernel_read_readvariableop)
%savev2_right_bias_read_readvariableop*
&savev2_mid1_kernel_read_readvariableop(
$savev2_mid1_bias_read_readvariableop.
*savev2_dense_25_kernel_read_readvariableop,
(savev2_dense_25_bias_read_readvariableop-
)savev2_output1_kernel_read_readvariableop+
'savev2_output1_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop/
+savev2_output1_kernel_1_read_readvariableop-
)savev2_output1_bias_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop1
-savev2_adam_left_kernel_m_read_readvariableop/
+savev2_adam_left_bias_m_read_readvariableop3
/savev2_adam_right1_kernel_m_read_readvariableop1
-savev2_adam_right1_bias_m_read_readvariableop2
.savev2_adam_left1_kernel_m_read_readvariableop0
,savev2_adam_left1_bias_m_read_readvariableop2
.savev2_adam_right_kernel_m_read_readvariableop0
,savev2_adam_right_bias_m_read_readvariableop1
-savev2_adam_mid1_kernel_m_read_readvariableop/
+savev2_adam_mid1_bias_m_read_readvariableop5
1savev2_adam_dense_25_kernel_m_read_readvariableop3
/savev2_adam_dense_25_bias_m_read_readvariableop4
0savev2_adam_output1_kernel_m_read_readvariableop2
.savev2_adam_output1_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableop5
1savev2_adam_dense_26_kernel_m_read_readvariableop3
/savev2_adam_dense_26_bias_m_read_readvariableop6
2savev2_adam_output1_kernel_m_1_read_readvariableop4
0savev2_adam_output1_bias_m_1_read_readvariableop1
-savev2_adam_left_kernel_v_read_readvariableop/
+savev2_adam_left_bias_v_read_readvariableop3
/savev2_adam_right1_kernel_v_read_readvariableop1
-savev2_adam_right1_bias_v_read_readvariableop2
.savev2_adam_left1_kernel_v_read_readvariableop0
,savev2_adam_left1_bias_v_read_readvariableop2
.savev2_adam_right_kernel_v_read_readvariableop0
,savev2_adam_right_bias_v_read_readvariableop1
-savev2_adam_mid1_kernel_v_read_readvariableop/
+savev2_adam_mid1_bias_v_read_readvariableop5
1savev2_adam_dense_25_kernel_v_read_readvariableop3
/savev2_adam_dense_25_bias_v_read_readvariableop4
0savev2_adam_output1_kernel_v_read_readvariableop2
.savev2_adam_output1_bias_v_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableop5
1savev2_adam_dense_26_kernel_v_read_readvariableop3
/savev2_adam_dense_26_bias_v_read_readvariableop6
2savev2_adam_output1_kernel_v_1_read_readvariableop4
0savev2_adam_output1_bias_v_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?"
value?"B?"LB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:L*
dtype0*?
value?B?LB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop&savev2_left_kernel_read_readvariableop$savev2_left_bias_read_readvariableop(savev2_right1_kernel_read_readvariableop&savev2_right1_bias_read_readvariableop'savev2_left1_kernel_read_readvariableop%savev2_left1_bias_read_readvariableop'savev2_right_kernel_read_readvariableop%savev2_right_bias_read_readvariableop&savev2_mid1_kernel_read_readvariableop$savev2_mid1_bias_read_readvariableop*savev2_dense_25_kernel_read_readvariableop(savev2_dense_25_bias_read_readvariableop)savev2_output1_kernel_read_readvariableop'savev2_output1_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop+savev2_output1_kernel_1_read_readvariableop)savev2_output1_bias_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop-savev2_adam_left_kernel_m_read_readvariableop+savev2_adam_left_bias_m_read_readvariableop/savev2_adam_right1_kernel_m_read_readvariableop-savev2_adam_right1_bias_m_read_readvariableop.savev2_adam_left1_kernel_m_read_readvariableop,savev2_adam_left1_bias_m_read_readvariableop.savev2_adam_right_kernel_m_read_readvariableop,savev2_adam_right_bias_m_read_readvariableop-savev2_adam_mid1_kernel_m_read_readvariableop+savev2_adam_mid1_bias_m_read_readvariableop1savev2_adam_dense_25_kernel_m_read_readvariableop/savev2_adam_dense_25_bias_m_read_readvariableop0savev2_adam_output1_kernel_m_read_readvariableop.savev2_adam_output1_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop1savev2_adam_dense_26_kernel_m_read_readvariableop/savev2_adam_dense_26_bias_m_read_readvariableop2savev2_adam_output1_kernel_m_1_read_readvariableop0savev2_adam_output1_bias_m_1_read_readvariableop-savev2_adam_left_kernel_v_read_readvariableop+savev2_adam_left_bias_v_read_readvariableop/savev2_adam_right1_kernel_v_read_readvariableop-savev2_adam_right1_bias_v_read_readvariableop.savev2_adam_left1_kernel_v_read_readvariableop,savev2_adam_left1_bias_v_read_readvariableop.savev2_adam_right_kernel_v_read_readvariableop,savev2_adam_right_bias_v_read_readvariableop-savev2_adam_mid1_kernel_v_read_readvariableop+savev2_adam_mid1_bias_v_read_readvariableop1savev2_adam_dense_25_kernel_v_read_readvariableop/savev2_adam_dense_25_bias_v_read_readvariableop0savev2_adam_output1_kernel_v_read_readvariableop.savev2_adam_output1_bias_v_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop1savev2_adam_dense_26_kernel_v_read_readvariableop/savev2_adam_dense_26_bias_v_read_readvariableop2savev2_adam_output1_kernel_v_1_read_readvariableop0savev2_adam_output1_bias_v_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Z
dtypesP
N2L	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : :@:@:@:@:@?:?:@?:?:?@:@:
?? : : ::@ : :	?8 : : :: : : : : : : : : : :@:@:@:@:@?:?:@?:?:?@:@:
?? : : ::@ : :	?8 : : ::@:@:@:@:@?:?:@?:?:?@:@:
?? : : ::@ : :	?8 : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 	

_output_shapes
:@:-
)
'
_output_shapes
:@?:!

_output_shapes	
:?:-)
'
_output_shapes
:@?:!

_output_shapes	
:?:-)
'
_output_shapes
:?@: 

_output_shapes
:@:&"
 
_output_shapes
:
?? : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::,(
&
_output_shapes
:@ : 

_output_shapes
: :%!

_output_shapes
:	?8 : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :,$(
&
_output_shapes
:@: %

_output_shapes
:@:,&(
&
_output_shapes
:@: '

_output_shapes
:@:-()
'
_output_shapes
:@?:!)

_output_shapes	
:?:-*)
'
_output_shapes
:@?:!+

_output_shapes	
:?:-,)
'
_output_shapes
:?@: -

_output_shapes
:@:&."
 
_output_shapes
:
?? : /

_output_shapes
: :$0 

_output_shapes

: : 1

_output_shapes
::,2(
&
_output_shapes
:@ : 3

_output_shapes
: :%4!

_output_shapes
:	?8 : 5

_output_shapes
: :$6 

_output_shapes

: : 7

_output_shapes
::,8(
&
_output_shapes
:@: 9

_output_shapes
:@:,:(
&
_output_shapes
:@: ;

_output_shapes
:@:-<)
'
_output_shapes
:@?:!=

_output_shapes	
:?:->)
'
_output_shapes
:@?:!?

_output_shapes	
:?:-@)
'
_output_shapes
:?@: A

_output_shapes
:@:&B"
 
_output_shapes
:
?? : C

_output_shapes
: :$D 

_output_shapes

: : E

_output_shapes
::,F(
&
_output_shapes
:@ : G

_output_shapes
: :%H!

_output_shapes
:	?8 : I

_output_shapes
: :$J 

_output_shapes

: : K

_output_shapes
::L

_output_shapes
: 
?E
?

D__inference_model_37_layer_call_and_return_conditional_losses_297438
inputs_0
inputs_1?
%right1_conv2d_readvariableop_resource:@4
&right1_biasadd_readvariableop_resource:@=
#left_conv2d_readvariableop_resource:@2
$left_biasadd_readvariableop_resource:@?
$left1_conv2d_readvariableop_resource:@?4
%left1_biasadd_readvariableop_resource:	??
$right_conv2d_readvariableop_resource:@?4
%right_biasadd_readvariableop_resource:	?>
#mid1_conv2d_readvariableop_resource:?@2
$mid1_biasadd_readvariableop_resource:@;
'dense_25_matmul_readvariableop_resource:
?? 6
(dense_25_biasadd_readvariableop_resource: 8
&output1_matmul_readvariableop_resource: 5
'output1_biasadd_readvariableop_resource:
identity

identity_1??dense_25/BiasAdd/ReadVariableOp?dense_25/MatMul/ReadVariableOp?left/BiasAdd/ReadVariableOp?left/Conv2D/ReadVariableOp?left1/BiasAdd/ReadVariableOp?left1/Conv2D/ReadVariableOp?mid1/BiasAdd/ReadVariableOp?mid1/Conv2D/ReadVariableOp?output1/BiasAdd/ReadVariableOp?output1/MatMul/ReadVariableOp?right/BiasAdd/ReadVariableOp?right/Conv2D/ReadVariableOp?right1/BiasAdd/ReadVariableOp?right1/Conv2D/ReadVariableOp?
right1/Conv2D/ReadVariableOpReadVariableOp%right1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
right1/Conv2DConv2Dinputs_0$right1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
?
right1/BiasAdd/ReadVariableOpReadVariableOp&right1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
right1/BiasAddBiasAddright1/Conv2D:output:0%right1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@f
right1/ReluReluright1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
left/Conv2D/ReadVariableOpReadVariableOp#left_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0?
left/Conv2DConv2Dinputs_1"left/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@*
paddingSAME*
strides
|
left/BiasAdd/ReadVariableOpReadVariableOp$left_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
left/BiasAddBiasAddleft/Conv2D:output:0#left/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@@b
	left/ReluReluleft/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@@?
left1/Conv2D/ReadVariableOpReadVariableOp$left1_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
left1/Conv2DConv2Dleft/Relu:activations:0#left1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides

left1/BiasAdd/ReadVariableOpReadVariableOp%left1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
left1/BiasAddBiasAddleft1/Conv2D:output:0$left1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?e

left1/ReluReluleft1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
right/Conv2D/ReadVariableOpReadVariableOp$right_conv2d_readvariableop_resource*'
_output_shapes
:@?*
dtype0?
right/Conv2DConv2Dright1/Relu:activations:0#right/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?*
paddingSAME*
strides

right/BiasAdd/ReadVariableOpReadVariableOp%right_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
right/BiasAddBiasAddright/Conv2D:output:0$right/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????@@?e

right/ReluReluright/BiasAdd:output:0*
T0*0
_output_shapes
:?????????@@??
maximum_13/MaximumMaximumleft1/Relu:activations:0right/Relu:activations:0*
T0*0
_output_shapes
:?????????@@??
max_pooling2d_37/MaxPoolMaxPoolmaximum_13/Maximum:z:0*0
_output_shapes
:?????????  ?*
ksize
*
paddingVALID*
strides
?
mid1/Conv2D/ReadVariableOpReadVariableOp#mid1_conv2d_readvariableop_resource*'
_output_shapes
:?@*
dtype0?
mid1/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0"mid1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @*
paddingSAME*
strides
|
mid1/BiasAdd/ReadVariableOpReadVariableOp$mid1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
mid1/BiasAddBiasAddmid1/Conv2D:output:0#mid1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  @b
	mid1/ReluRelumid1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  @r
dropout_16/IdentityIdentitymid1/Relu:activations:0*
T0*/
_output_shapes
:?????????  @a
flatten_25/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten_25/ReshapeReshapedropout_16/Identity:output:0flatten_25/Const:output:0*
T0*)
_output_shapes
:????????????
dense_25/MatMul/ReadVariableOpReadVariableOp'dense_25_matmul_readvariableop_resource* 
_output_shapes
:
?? *
dtype0?
dense_25/MatMulMatMulflatten_25/Reshape:output:0&dense_25/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
dense_25/BiasAdd/ReadVariableOpReadVariableOp(dense_25_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
dense_25/BiasAddBiasAdddense_25/MatMul:product:0'dense_25/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? b
dense_25/ReluReludense_25/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
output1/MatMul/ReadVariableOpReadVariableOp&output1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
output1/MatMulMatMuldense_25/Relu:activations:0%output1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
output1/BiasAdd/ReadVariableOpReadVariableOp'output1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
output1/BiasAddBiasAddoutput1/MatMul:product:0&output1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
output1/SoftmaxSoftmaxoutput1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????s
IdentityIdentitydropout_16/Identity:output:0^NoOp*
T0*/
_output_shapes
:?????????  @j

Identity_1Identityoutput1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_25/BiasAdd/ReadVariableOp^dense_25/MatMul/ReadVariableOp^left/BiasAdd/ReadVariableOp^left/Conv2D/ReadVariableOp^left1/BiasAdd/ReadVariableOp^left1/Conv2D/ReadVariableOp^mid1/BiasAdd/ReadVariableOp^mid1/Conv2D/ReadVariableOp^output1/BiasAdd/ReadVariableOp^output1/MatMul/ReadVariableOp^right/BiasAdd/ReadVariableOp^right/Conv2D/ReadVariableOp^right1/BiasAdd/ReadVariableOp^right1/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R:?????????@@:?????????@@: : : : : : : : : : : : : : 2B
dense_25/BiasAdd/ReadVariableOpdense_25/BiasAdd/ReadVariableOp2@
dense_25/MatMul/ReadVariableOpdense_25/MatMul/ReadVariableOp2:
left/BiasAdd/ReadVariableOpleft/BiasAdd/ReadVariableOp28
left/Conv2D/ReadVariableOpleft/Conv2D/ReadVariableOp2<
left1/BiasAdd/ReadVariableOpleft1/BiasAdd/ReadVariableOp2:
left1/Conv2D/ReadVariableOpleft1/Conv2D/ReadVariableOp2:
mid1/BiasAdd/ReadVariableOpmid1/BiasAdd/ReadVariableOp28
mid1/Conv2D/ReadVariableOpmid1/Conv2D/ReadVariableOp2@
output1/BiasAdd/ReadVariableOpoutput1/BiasAdd/ReadVariableOp2>
output1/MatMul/ReadVariableOpoutput1/MatMul/ReadVariableOp2<
right/BiasAdd/ReadVariableOpright/BiasAdd/ReadVariableOp2:
right/Conv2D/ReadVariableOpright/Conv2D/ReadVariableOp2>
right1/BiasAdd/ReadVariableOpright1/BiasAdd/ReadVariableOp2<
right1/Conv2D/ReadVariableOpright1/Conv2D/ReadVariableOp:Y U
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/0:YU
/
_output_shapes
:?????????@@
"
_user_specified_name
inputs/1
?
?
D__inference_model_39_layer_call_and_return_conditional_losses_296643

inputs
inputs_1)
model_37_296598:@
model_37_296600:@)
model_37_296602:@
model_37_296604:@*
model_37_296606:@?
model_37_296608:	?*
model_37_296610:@?
model_37_296612:	?*
model_37_296614:?@
model_37_296616:@#
model_37_296618:
?? 
model_37_296620: !
model_37_296622: 
model_37_296624:)
model_38_296628:@ 
model_38_296630: "
model_38_296632:	?8 
model_38_296634: !
model_38_296636: 
model_38_296638:
identity

identity_1?? model_37/StatefulPartitionedCall? model_38/StatefulPartitionedCall?
 model_37/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1model_37_296598model_37_296600model_37_296602model_37_296604model_37_296606model_37_296608model_37_296610model_37_296612model_37_296614model_37_296616model_37_296618model_37_296620model_37_296622model_37_296624*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:?????????  @:?????????*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_37_layer_call_and_return_conditional_losses_295947?
 model_38/StatefulPartitionedCallStatefulPartitionedCall)model_37/StatefulPartitionedCall:output:0model_38_296628model_38_296630model_38_296632model_38_296634model_38_296636model_38_296638*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_38_layer_call_and_return_conditional_losses_296419x
IdentityIdentity)model_37/StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????z

Identity_1Identity)model_38/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^model_37/StatefulPartitionedCall!^model_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*q
_input_shapes`
^:?????????@@:?????????@@: : : : : : : : : : : : : : : : : : : : 2D
 model_37/StatefulPartitionedCall model_37/StatefulPartitionedCall2D
 model_38/StatefulPartitionedCall model_38/StatefulPartitionedCall:W S
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????@@
 
_user_specified_nameinputs
?
?
D__inference_model_38_layer_call_and_return_conditional_losses_296419

inputs*
conv2d_24_296365:@ 
conv2d_24_296367: "
dense_26_296396:	?8 
dense_26_296398:  
output1_296413: 
output1_296415:
identity??!conv2d_24/StatefulPartitionedCall? dense_26/StatefulPartitionedCall?output1/StatefulPartitionedCall?
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_24_296365conv2d_24_296367*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_296364?
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_296374?
flatten_26/PartitionedCallPartitionedCall)max_pooling2d_38/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????8* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_flatten_26_layer_call_and_return_conditional_losses_296382?
 dense_26/StatefulPartitionedCallStatefulPartitionedCall#flatten_26/PartitionedCall:output:0dense_26_296396dense_26_296398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_296395?
output1/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0output1_296413output1_296415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_output1_layer_call_and_return_conditional_losses_296412w
IdentityIdentity(output1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp"^conv2d_24/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall ^output1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????  @: : : : : : 2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2B
output1/StatefulPartitionedCalloutput1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  @
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_669
serving_default_input_66:0?????????@@
E
input_679
serving_default_input_67:0?????????@@<
model_370
StatefulPartitionedCall:0?????????<
model_380
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
	optimizer
loss
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
layer_with_weights-4
layer-8
layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
?
layer-0
layer_with_weights-0
layer-1
layer-2
 layer-3
!layer_with_weights-1
!layer-4
"layer_with_weights-2
"layer-5
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_network
?
'iter

(beta_1

)beta_2
	*decay
+learning_rate,m?-m?.m?/m?0m?1m?2m?3m?4m?5m?6m?7m?8m?9m?:m?;m?<m?=m?>m??m?,v?-v?.v?/v?0v?1v?2v?3v?4v?5v?6v?7v?8v?9v?:v?;v?<v?=v?>v??v?"
	optimizer
 "
trackable_list_wrapper
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19"
trackable_list_wrapper
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913
:14
;15
<16
=17
>18
?19"
trackable_list_wrapper
 "
trackable_list_wrapper
?
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
	regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
"
_tf_keras_input_layer
"
_tf_keras_input_layer
?

,kernel
-bias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

.kernel
/bias
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

4kernel
5bias
]	variables
^trainable_variables
_regularization_losses
`	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
a	variables
btrainable_variables
cregularization_losses
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

6kernel
7bias
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

8kernel
9bias
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913"
trackable_list_wrapper
?
,0
-1
.2
/3
04
15
26
37
48
59
610
711
812
913"
trackable_list_wrapper
 "
trackable_list_wrapper
?
qnon_trainable_variables

rlayers
smetrics
tlayer_regularization_losses
ulayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_tf_keras_input_layer
?

:kernel
;bias
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
z	variables
{trainable_variables
|regularization_losses
}	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
~	variables
trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
%:#@2left/kernel
:@2	left/bias
':%@2right1/kernel
:@2right1/bias
':%@?2left1/kernel
:?2
left1/bias
':%@?2right/kernel
:?2
right/bias
&:$?@2mid1/kernel
:@2	mid1/bias
#:!
?? 2dense_25/kernel
: 2dense_25/bias
 : 2output1/kernel
:2output1/bias
*:(@ 2conv2d_24/kernel
: 2conv2d_24/bias
": 	?8 2dense_26/kernel
: 2dense_26/bias
 : 2output1/kernel
:2output1/bias
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
]	variables
^trainable_variables
_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
a	variables
btrainable_variables
cregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
e	variables
ftrainable_variables
gregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
i	variables
jtrainable_variables
kregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
m	variables
ntrainable_variables
oregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
z	variables
{trainable_variables
|regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
~	variables
trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
J
0
1
2
 3
!4
"5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
*:(@2Adam/left/kernel/m
:@2Adam/left/bias/m
,:*@2Adam/right1/kernel/m
:@2Adam/right1/bias/m
,:*@?2Adam/left1/kernel/m
:?2Adam/left1/bias/m
,:*@?2Adam/right/kernel/m
:?2Adam/right/bias/m
+:)?@2Adam/mid1/kernel/m
:@2Adam/mid1/bias/m
(:&
?? 2Adam/dense_25/kernel/m
 : 2Adam/dense_25/bias/m
%:# 2Adam/output1/kernel/m
:2Adam/output1/bias/m
/:-@ 2Adam/conv2d_24/kernel/m
!: 2Adam/conv2d_24/bias/m
':%	?8 2Adam/dense_26/kernel/m
 : 2Adam/dense_26/bias/m
%:# 2Adam/output1/kernel/m
:2Adam/output1/bias/m
*:(@2Adam/left/kernel/v
:@2Adam/left/bias/v
,:*@2Adam/right1/kernel/v
:@2Adam/right1/bias/v
,:*@?2Adam/left1/kernel/v
:?2Adam/left1/bias/v
,:*@?2Adam/right/kernel/v
:?2Adam/right/bias/v
+:)?@2Adam/mid1/kernel/v
:@2Adam/mid1/bias/v
(:&
?? 2Adam/dense_25/kernel/v
 : 2Adam/dense_25/bias/v
%:# 2Adam/output1/kernel/v
:2Adam/output1/bias/v
/:-@ 2Adam/conv2d_24/kernel/v
!: 2Adam/conv2d_24/bias/v
':%	?8 2Adam/dense_26/kernel/v
 : 2Adam/dense_26/bias/v
%:# 2Adam/output1/kernel/v
:2Adam/output1/bias/v
?2?
)__inference_model_39_layer_call_fn_296688
)__inference_model_39_layer_call_fn_297083
)__inference_model_39_layer_call_fn_297131
)__inference_model_39_layer_call_fn_296881?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_39_layer_call_and_return_conditional_losses_297215
D__inference_model_39_layer_call_and_return_conditional_losses_297306
D__inference_model_39_layer_call_and_return_conditional_losses_296930
D__inference_model_39_layer_call_and_return_conditional_losses_296979?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_295776input_66input_67"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_model_37_layer_call_fn_295980
)__inference_model_37_layer_call_fn_297342
)__inference_model_37_layer_call_fn_297378
)__inference_model_37_layer_call_fn_296244?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_37_layer_call_and_return_conditional_losses_297438
D__inference_model_37_layer_call_and_return_conditional_losses_297505
D__inference_model_37_layer_call_and_return_conditional_losses_296289
D__inference_model_37_layer_call_and_return_conditional_losses_296334?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_model_38_layer_call_fn_296434
)__inference_model_38_layer_call_fn_297522
)__inference_model_38_layer_call_fn_297539
)__inference_model_38_layer_call_fn_296547?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_model_38_layer_call_and_return_conditional_losses_297567
D__inference_model_38_layer_call_and_return_conditional_losses_297595
D__inference_model_38_layer_call_and_return_conditional_losses_296568
D__inference_model_38_layer_call_and_return_conditional_losses_296589?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
$__inference_signature_wrapper_297035input_66input_67"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_left_layer_call_fn_297604?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_left_layer_call_and_return_conditional_losses_297615?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_right1_layer_call_fn_297624?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_right1_layer_call_and_return_conditional_losses_297635?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_left1_layer_call_fn_297644?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_left1_layer_call_and_return_conditional_losses_297655?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_right_layer_call_fn_297664?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_right_layer_call_and_return_conditional_losses_297675?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_maximum_13_layer_call_fn_297681?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_maximum_13_layer_call_and_return_conditional_losses_297687?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_37_layer_call_fn_297692
1__inference_max_pooling2d_37_layer_call_fn_297697?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297702
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297707?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_mid1_layer_call_fn_297716?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_mid1_layer_call_and_return_conditional_losses_297727?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_dropout_16_layer_call_fn_297732
+__inference_dropout_16_layer_call_fn_297737?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_16_layer_call_and_return_conditional_losses_297742
F__inference_dropout_16_layer_call_and_return_conditional_losses_297754?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_flatten_25_layer_call_fn_297759?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_25_layer_call_and_return_conditional_losses_297765?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_25_layer_call_fn_297774?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_25_layer_call_and_return_conditional_losses_297785?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_output1_layer_call_fn_297794?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_output1_layer_call_and_return_conditional_losses_297805?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_conv2d_24_layer_call_fn_297814?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_conv2d_24_layer_call_and_return_conditional_losses_297825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_max_pooling2d_38_layer_call_fn_297830
1__inference_max_pooling2d_38_layer_call_fn_297835?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297840
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297845?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_26_layer_call_fn_297850?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_26_layer_call_and_return_conditional_losses_297856?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_26_layer_call_fn_297865?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_26_layer_call_and_return_conditional_losses_297876?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_output1_layer_call_fn_297885?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_output1_layer_call_and_return_conditional_losses_297896?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_295776?./,-0123456789:;<=>?j?g
`?]
[?X
*?'
input_66?????????@@
*?'
input_67?????????@@
? "c?`
.
model_37"?
model_37?????????
.
model_38"?
model_38??????????
E__inference_conv2d_24_layer_call_and_return_conditional_losses_297825l:;7?4
-?*
(?%
inputs?????????  @
? "-?*
#? 
0????????? 
? ?
*__inference_conv2d_24_layer_call_fn_297814_:;7?4
-?*
(?%
inputs?????????  @
? " ?????????? ?
D__inference_dense_25_layer_call_and_return_conditional_losses_297785^671?.
'?$
"?
inputs???????????
? "%?"
?
0????????? 
? ~
)__inference_dense_25_layer_call_fn_297774Q671?.
'?$
"?
inputs???????????
? "?????????? ?
D__inference_dense_26_layer_call_and_return_conditional_losses_297876]<=0?-
&?#
!?
inputs??????????8
? "%?"
?
0????????? 
? }
)__inference_dense_26_layer_call_fn_297865P<=0?-
&?#
!?
inputs??????????8
? "?????????? ?
F__inference_dropout_16_layer_call_and_return_conditional_losses_297742l;?8
1?.
(?%
inputs?????????  @
p 
? "-?*
#? 
0?????????  @
? ?
F__inference_dropout_16_layer_call_and_return_conditional_losses_297754l;?8
1?.
(?%
inputs?????????  @
p
? "-?*
#? 
0?????????  @
? ?
+__inference_dropout_16_layer_call_fn_297732_;?8
1?.
(?%
inputs?????????  @
p 
? " ??????????  @?
+__inference_dropout_16_layer_call_fn_297737_;?8
1?.
(?%
inputs?????????  @
p
? " ??????????  @?
F__inference_flatten_25_layer_call_and_return_conditional_losses_297765b7?4
-?*
(?%
inputs?????????  @
? "'?$
?
0???????????
? ?
+__inference_flatten_25_layer_call_fn_297759U7?4
-?*
(?%
inputs?????????  @
? "?????????????
F__inference_flatten_26_layer_call_and_return_conditional_losses_297856a7?4
-?*
(?%
inputs????????? 
? "&?#
?
0??????????8
? ?
+__inference_flatten_26_layer_call_fn_297850T7?4
-?*
(?%
inputs????????? 
? "???????????8?
A__inference_left1_layer_call_and_return_conditional_losses_297655m017?4
-?*
(?%
inputs?????????@@@
? ".?+
$?!
0?????????@@?
? ?
&__inference_left1_layer_call_fn_297644`017?4
-?*
(?%
inputs?????????@@@
? "!??????????@@??
@__inference_left_layer_call_and_return_conditional_losses_297615l,-7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@@
? ?
%__inference_left_layer_call_fn_297604_,-7?4
-?*
(?%
inputs?????????@@
? " ??????????@@@?
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297702?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_297707j8?5
.?+
)?&
inputs?????????@@?
? ".?+
$?!
0?????????  ?
? ?
1__inference_max_pooling2d_37_layer_call_fn_297692?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_37_layer_call_fn_297697]8?5
.?+
)?&
inputs?????????@@?
? "!??????????  ??
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297840?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
L__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_297845h7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0????????? 
? ?
1__inference_max_pooling2d_38_layer_call_fn_297830?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
1__inference_max_pooling2d_38_layer_call_fn_297835[7?4
-?*
(?%
inputs????????? 
? " ?????????? ?
F__inference_maximum_13_layer_call_and_return_conditional_losses_297687?l?i
b?_
]?Z
+?(
inputs/0?????????@@?
+?(
inputs/1?????????@@?
? ".?+
$?!
0?????????@@?
? ?
+__inference_maximum_13_layer_call_fn_297681?l?i
b?_
]?Z
+?(
inputs/0?????????@@?
+?(
inputs/1?????????@@?
? "!??????????@@??
@__inference_mid1_layer_call_and_return_conditional_losses_297727m458?5
.?+
)?&
inputs?????????  ?
? "-?*
#? 
0?????????  @
? ?
%__inference_mid1_layer_call_fn_297716`458?5
.?+
)?&
inputs?????????  ?
? " ??????????  @?
D__inference_model_37_layer_call_and_return_conditional_losses_296289?./,-0123456789r?o
h?e
[?X
*?'
input_63?????????@@
*?'
input_64?????????@@
p 

 
? "S?P
I?F
%?"
0/0?????????  @
?
0/1?????????
? ?
D__inference_model_37_layer_call_and_return_conditional_losses_296334?./,-0123456789r?o
h?e
[?X
*?'
input_63?????????@@
*?'
input_64?????????@@
p

 
? "S?P
I?F
%?"
0/0?????????  @
?
0/1?????????
? ?
D__inference_model_37_layer_call_and_return_conditional_losses_297438?./,-0123456789r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p 

 
? "S?P
I?F
%?"
0/0?????????  @
?
0/1?????????
? ?
D__inference_model_37_layer_call_and_return_conditional_losses_297505?./,-0123456789r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p

 
? "S?P
I?F
%?"
0/0?????????  @
?
0/1?????????
? ?
)__inference_model_37_layer_call_fn_295980?./,-0123456789r?o
h?e
[?X
*?'
input_63?????????@@
*?'
input_64?????????@@
p 

 
? "E?B
#? 
0?????????  @
?
1??????????
)__inference_model_37_layer_call_fn_296244?./,-0123456789r?o
h?e
[?X
*?'
input_63?????????@@
*?'
input_64?????????@@
p

 
? "E?B
#? 
0?????????  @
?
1??????????
)__inference_model_37_layer_call_fn_297342?./,-0123456789r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p 

 
? "E?B
#? 
0?????????  @
?
1??????????
)__inference_model_37_layer_call_fn_297378?./,-0123456789r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p

 
? "E?B
#? 
0?????????  @
?
1??????????
D__inference_model_38_layer_call_and_return_conditional_losses_296568r:;<=>?A?>
7?4
*?'
input_65?????????  @
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_38_layer_call_and_return_conditional_losses_296589r:;<=>?A?>
7?4
*?'
input_65?????????  @
p

 
? "%?"
?
0?????????
? ?
D__inference_model_38_layer_call_and_return_conditional_losses_297567p:;<=>???<
5?2
(?%
inputs?????????  @
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_38_layer_call_and_return_conditional_losses_297595p:;<=>???<
5?2
(?%
inputs?????????  @
p

 
? "%?"
?
0?????????
? ?
)__inference_model_38_layer_call_fn_296434e:;<=>?A?>
7?4
*?'
input_65?????????  @
p 

 
? "???????????
)__inference_model_38_layer_call_fn_296547e:;<=>?A?>
7?4
*?'
input_65?????????  @
p

 
? "???????????
)__inference_model_38_layer_call_fn_297522c:;<=>???<
5?2
(?%
inputs?????????  @
p 

 
? "???????????
)__inference_model_38_layer_call_fn_297539c:;<=>???<
5?2
(?%
inputs?????????  @
p

 
? "???????????
D__inference_model_39_layer_call_and_return_conditional_losses_296930?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
input_66?????????@@
*?'
input_67?????????@@
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
D__inference_model_39_layer_call_and_return_conditional_losses_296979?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
input_66?????????@@
*?'
input_67?????????@@
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
D__inference_model_39_layer_call_and_return_conditional_losses_297215?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
D__inference_model_39_layer_call_and_return_conditional_losses_297306?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
)__inference_model_39_layer_call_fn_296688?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
input_66?????????@@
*?'
input_67?????????@@
p 

 
? "=?:
?
0?????????
?
1??????????
)__inference_model_39_layer_call_fn_296881?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
input_66?????????@@
*?'
input_67?????????@@
p

 
? "=?:
?
0?????????
?
1??????????
)__inference_model_39_layer_call_fn_297083?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p 

 
? "=?:
?
0?????????
?
1??????????
)__inference_model_39_layer_call_fn_297131?./,-0123456789:;<=>?r?o
h?e
[?X
*?'
inputs/0?????????@@
*?'
inputs/1?????????@@
p

 
? "=?:
?
0?????????
?
1??????????
C__inference_output1_layer_call_and_return_conditional_losses_297805\89/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ?
C__inference_output1_layer_call_and_return_conditional_losses_297896\>?/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? {
(__inference_output1_layer_call_fn_297794O89/?,
%?"
 ?
inputs????????? 
? "??????????{
(__inference_output1_layer_call_fn_297885O>?/?,
%?"
 ?
inputs????????? 
? "???????????
B__inference_right1_layer_call_and_return_conditional_losses_297635l./7?4
-?*
(?%
inputs?????????@@
? "-?*
#? 
0?????????@@@
? ?
'__inference_right1_layer_call_fn_297624_./7?4
-?*
(?%
inputs?????????@@
? " ??????????@@@?
A__inference_right_layer_call_and_return_conditional_losses_297675m237?4
-?*
(?%
inputs?????????@@@
? ".?+
$?!
0?????????@@?
? ?
&__inference_right_layer_call_fn_297664`237?4
-?*
(?%
inputs?????????@@@
? "!??????????@@??
$__inference_signature_wrapper_297035?./,-0123456789:;<=>?}?z
? 
s?p
6
input_66*?'
input_66?????????@@
6
input_67*?'
input_67?????????@@"c?`
.
model_37"?
model_37?????????
.
model_38"?
model_38?????????
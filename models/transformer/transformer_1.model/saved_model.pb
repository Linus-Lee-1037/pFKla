��4
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
<
Selu
features"T
activations"T"
Ttype:
2
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8��0
�
3Adam/transformer_block/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/v
�
GAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/v*
_output_shapes	
:�*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/v
�
HAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/v*
_output_shapes	
:�*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31Adam/transformer_block/layer_normalization/beta/v
�
EAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/v*
_output_shapes	
:�*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42Adam/transformer_block/layer_normalization/gamma/v
�
FAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/v*
_output_shapes	
:�*
dtype0

Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/v
x
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/dense_5/kernel/v
�
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	@�*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_4/kernel/v
�
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	�@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_3/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v* 
_output_shapes
:
��*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_2/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v* 
_output_shapes
:
��*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v
�
SAdam/transformer_block/multi_head_self_attention/dense_1/bias/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v
�
UAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v* 
_output_shapes
:
��*
dtype0
�
=Adam/transformer_block/multi_head_self_attention/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_block/multi_head_self_attention/dense/bias/v
�
QAdam/transformer_block/multi_head_self_attention/dense/bias/v/Read/ReadVariableOpReadVariableOp=Adam/transformer_block/multi_head_self_attention/dense/bias/v*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense/kernel/v
�
SAdam/transformer_block/multi_head_self_attention/dense/kernel/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense/kernel/v* 
_output_shapes
:
��*
dtype0
�
:Adam/token_and_position_embedding/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/v
�
NAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/v*
_output_shapes
:	�*
dtype0
�
8Adam/token_and_position_embedding/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/v
�
LAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/v* 
_output_shapes
:
��*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_6/kernel/v
�
)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes
:	�@*
dtype0
�
3Adam/transformer_block/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53Adam/transformer_block/layer_normalization_1/beta/m
�
GAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp3Adam/transformer_block/layer_normalization_1/beta/m*
_output_shapes	
:�*
dtype0
�
4Adam/transformer_block/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64Adam/transformer_block/layer_normalization_1/gamma/m
�
HAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp4Adam/transformer_block/layer_normalization_1/gamma/m*
_output_shapes	
:�*
dtype0
�
1Adam/transformer_block/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31Adam/transformer_block/layer_normalization/beta/m
�
EAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOp1Adam/transformer_block/layer_normalization/beta/m*
_output_shapes	
:�*
dtype0
�
2Adam/transformer_block/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42Adam/transformer_block/layer_normalization/gamma/m
�
FAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/transformer_block/layer_normalization/gamma/m*
_output_shapes	
:�*
dtype0

Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/dense_5/bias/m
x
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/dense_5/kernel/m
�
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	@�*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_4/kernel/m
�
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	�@*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_3/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m* 
_output_shapes
:
��*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_2/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m* 
_output_shapes
:
��*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m
�
SAdam/transformer_block/multi_head_self_attention/dense_1/bias/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m*
_output_shapes	
:�*
dtype0
�
AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*R
shared_nameCAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m
�
UAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m* 
_output_shapes
:
��*
dtype0
�
=Adam/transformer_block/multi_head_self_attention/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_block/multi_head_self_attention/dense/bias/m
�
QAdam/transformer_block/multi_head_self_attention/dense/bias/m/Read/ReadVariableOpReadVariableOp=Adam/transformer_block/multi_head_self_attention/dense/bias/m*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_block/multi_head_self_attention/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*P
shared_nameA?Adam/transformer_block/multi_head_self_attention/dense/kernel/m
�
SAdam/transformer_block/multi_head_self_attention/dense/kernel/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_block/multi_head_self_attention/dense/kernel/m* 
_output_shapes
:
��*
dtype0
�
:Adam/token_and_position_embedding/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*K
shared_name<:Adam/token_and_position_embedding/embedding_1/embeddings/m
�
NAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp:Adam/token_and_position_embedding/embedding_1/embeddings/m*
_output_shapes
:	�*
dtype0
�
8Adam/token_and_position_embedding/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*I
shared_name:8Adam/token_and_position_embedding/embedding/embeddings/m
�
LAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpReadVariableOp8Adam/token_and_position_embedding/embedding/embeddings/m* 
_output_shapes
:
��*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/dense_6/kernel/m
�
)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes
:	�@*
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
�
,transformer_block/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*=
shared_name.,transformer_block/layer_normalization_1/beta
�
@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp,transformer_block/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
-transformer_block/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-transformer_block/layer_normalization_1/gamma
�
Atransformer_block/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp-transformer_block/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
*transformer_block/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*transformer_block/layer_normalization/beta
�
>transformer_block/layer_normalization/beta/Read/ReadVariableOpReadVariableOp*transformer_block/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
+transformer_block/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+transformer_block/layer_normalization/gamma
�
?transformer_block/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp+transformer_block/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
q
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_5/bias
j
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes	
:�*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	@�*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	�@*
dtype0
�
8transformer_block/multi_head_self_attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8transformer_block/multi_head_self_attention/dense_3/bias
�
Ltransformer_block/multi_head_self_attention/dense_3/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_3/bias*
_output_shapes	
:�*
dtype0
�
:transformer_block/multi_head_self_attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:transformer_block/multi_head_self_attention/dense_3/kernel
�
Ntransformer_block/multi_head_self_attention/dense_3/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_3/kernel* 
_output_shapes
:
��*
dtype0
�
8transformer_block/multi_head_self_attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8transformer_block/multi_head_self_attention/dense_2/bias
�
Ltransformer_block/multi_head_self_attention/dense_2/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_2/bias*
_output_shapes	
:�*
dtype0
�
:transformer_block/multi_head_self_attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:transformer_block/multi_head_self_attention/dense_2/kernel
�
Ntransformer_block/multi_head_self_attention/dense_2/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_2/kernel* 
_output_shapes
:
��*
dtype0
�
8transformer_block/multi_head_self_attention/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8transformer_block/multi_head_self_attention/dense_1/bias
�
Ltransformer_block/multi_head_self_attention/dense_1/bias/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense_1/bias*
_output_shapes	
:�*
dtype0
�
:transformer_block/multi_head_self_attention/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:transformer_block/multi_head_self_attention/dense_1/kernel
�
Ntransformer_block/multi_head_self_attention/dense_1/kernel/Read/ReadVariableOpReadVariableOp:transformer_block/multi_head_self_attention/dense_1/kernel* 
_output_shapes
:
��*
dtype0
�
6transformer_block/multi_head_self_attention/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*G
shared_name86transformer_block/multi_head_self_attention/dense/bias
�
Jtransformer_block/multi_head_self_attention/dense/bias/Read/ReadVariableOpReadVariableOp6transformer_block/multi_head_self_attention/dense/bias*
_output_shapes	
:�*
dtype0
�
8transformer_block/multi_head_self_attention/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*I
shared_name:8transformer_block/multi_head_self_attention/dense/kernel
�
Ltransformer_block/multi_head_self_attention/dense/kernel/Read/ReadVariableOpReadVariableOp8transformer_block/multi_head_self_attention/dense/kernel* 
_output_shapes
:
��*
dtype0
�
3token_and_position_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*D
shared_name53token_and_position_embedding/embedding_1/embeddings
�
Gtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_1/embeddings*
_output_shapes
:	�*
dtype0
�
1token_and_position_embedding/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*B
shared_name31token_and_position_embedding/embedding/embeddings
�
Etoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpReadVariableOp1token_and_position_embedding/embedding/embeddings* 
_output_shapes
:
��*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:*
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:@*
dtype0
y
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_6/kernel
r
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes
:	�@*
dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13token_and_position_embedding/embedding_1/embeddings1token_and_position_embedding/embedding/embeddings8transformer_block/multi_head_self_attention/dense/kernel6transformer_block/multi_head_self_attention/dense/bias:transformer_block/multi_head_self_attention/dense_1/kernel8transformer_block/multi_head_self_attention/dense_1/bias:transformer_block/multi_head_self_attention/dense_2/kernel8transformer_block/multi_head_self_attention/dense_2/bias:transformer_block/multi_head_self_attention/dense_3/kernel8transformer_block/multi_head_self_attention/dense_3/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/betadense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *,
f'R%
#__inference_signature_wrapper_11474

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!att
"ffn
#
layernorm1
$
layernorm2
%dropout1
&dropout2*
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator* 
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator* 
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
�
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
:18
;19
B20
C21
Q22
R23*
�
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
:18
;19
B20
C21
Q22
R23*
* 
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
jtrace_0
ktrace_1
ltrace_2
mtrace_3* 
6
ntrace_0
otrace_1
ptrace_2
qtrace_3* 
* 
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_rate:m�;m�Bm�Cm�Qm�Rm�Sm�Tm�Um�Vm�Wm�Xm�Ym�Zm�[m�\m�]m�^m�_m�`m�am�bm�cm�dm�:v�;v�Bv�Cv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�Xv�Yv�Zv�[v�\v�]v�^v�_v�`v�av�bv�cv�dv�*

wserving_default* 

S0
T1*

S0
T1*
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
S
embeddings*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
T
embeddings*
z
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15*
z
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�query_dense
�	key_dense
�value_dense
�combine_heads*
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	agamma
bbeta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	cgamma
dbeta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 

Q0
R1*

Q0
R1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1token_and_position_embedding/embedding/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3token_and_position_embedding/embedding_1/embeddings&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6transformer_block/multi_head_self_attention/dense/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_2/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:transformer_block/multi_head_self_attention/dense_3/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8transformer_block/multi_head_self_attention/dense_3/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_4/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_4/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_5/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_5/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+transformer_block/layer_normalization/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*transformer_block/layer_normalization/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-transformer_block/layer_normalization_1/gamma'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,transformer_block/layer_normalization_1/beta'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

0
1*
* 
* 
* 
* 
* 

S0*

S0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

T0*

T0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
.
!0
"1
#2
$3
%4
&5*
* 
* 
* 
* 
* 
* 
* 
<
U0
V1
W2
X3
Y4
Z5
[6
\7*
<
U0
V1
W2
X3
Y4
Z5
[6
\7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Wkernel
Xbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ykernel
Zbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias*
 
]0
^1
_2
`3*
 
]0
^1
_2
`3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

a0
b1*

a0
b1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

c0
d1*

c0
d1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
$
�0
�1
�2
�3*
* 
* 
* 

U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

W0
X1*

W0
X1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

[0
\1*

[0
\1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

]0
^1*

]0
^1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

_0
`1*

_0
`1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_block/multi_head_self_attention/dense/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE8Adam/token_and_position_embedding/embedding/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE:Adam/token_and_position_embedding/embedding_1/embeddings/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_block/multi_head_self_attention/dense/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_5/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_5/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/transformer_block/layer_normalization/gamma/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/transformer_block/layer_normalization/beta/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/transformer_block/layer_normalization_1/gamma/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE3Adam/transformer_block/layer_normalization_1/beta/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�(
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOpEtoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpGtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense/kernel/Read/ReadVariableOpJtransformer_block/multi_head_self_attention/dense/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_1/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_2/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/bias/Read/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_3/kernel/Read/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp?transformer_block/layer_normalization/gamma/Read/ReadVariableOp>transformer_block/layer_normalization/beta/Read/ReadVariableOpAtransformer_block/layer_normalization_1/gamma/Read/ReadVariableOp@transformer_block/layer_normalization_1/beta/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/m/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense/kernel/m/Read/ReadVariableOpQAdam/transformer_block/multi_head_self_attention/dense/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_1/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_2/bias/m/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/m/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/m/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/m/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOpLAdam/token_and_position_embedding/embedding/embeddings/v/Read/ReadVariableOpNAdam/token_and_position_embedding/embedding_1/embeddings/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense/kernel/v/Read/ReadVariableOpQAdam/transformer_block/multi_head_self_attention/dense/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_1/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_2/bias/v/Read/ReadVariableOpUAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v/Read/ReadVariableOpSAdam/transformer_block/multi_head_self_attention/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpFAdam/transformer_block/layer_normalization/gamma/v/Read/ReadVariableOpEAdam/transformer_block/layer_normalization/beta/v/Read/ReadVariableOpHAdam/transformer_block/layer_normalization_1/gamma/v/Read/ReadVariableOpGAdam/transformer_block/layer_normalization_1/beta/v/Read/ReadVariableOpConst*^
TinW
U2S	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *'
f"R 
__inference__traced_save_13867
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasdense_7/kerneldense_7/biasdense_8/kerneldense_8/bias1token_and_position_embedding/embedding/embeddings3token_and_position_embedding/embedding_1/embeddings8transformer_block/multi_head_self_attention/dense/kernel6transformer_block/multi_head_self_attention/dense/bias:transformer_block/multi_head_self_attention/dense_1/kernel8transformer_block/multi_head_self_attention/dense_1/bias:transformer_block/multi_head_self_attention/dense_2/kernel8transformer_block/multi_head_self_attention/dense_2/bias:transformer_block/multi_head_self_attention/dense_3/kernel8transformer_block/multi_head_self_attention/dense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias+transformer_block/layer_normalization/gamma*transformer_block/layer_normalization/beta-transformer_block/layer_normalization_1/gamma,transformer_block/layer_normalization_1/beta	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_6/kernel/mAdam/dense_6/bias/mAdam/dense_7/kernel/mAdam/dense_7/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/m8Adam/token_and_position_embedding/embedding/embeddings/m:Adam/token_and_position_embedding/embedding_1/embeddings/m?Adam/transformer_block/multi_head_self_attention/dense/kernel/m=Adam/transformer_block/multi_head_self_attention/dense/bias/mAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_1/bias/mAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_2/bias/mAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m?Adam/transformer_block/multi_head_self_attention/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m2Adam/transformer_block/layer_normalization/gamma/m1Adam/transformer_block/layer_normalization/beta/m4Adam/transformer_block/layer_normalization_1/gamma/m3Adam/transformer_block/layer_normalization_1/beta/mAdam/dense_6/kernel/vAdam/dense_6/bias/vAdam/dense_7/kernel/vAdam/dense_7/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/v8Adam/token_and_position_embedding/embedding/embeddings/v:Adam/token_and_position_embedding/embedding_1/embeddings/v?Adam/transformer_block/multi_head_self_attention/dense/kernel/v=Adam/transformer_block/multi_head_self_attention/dense/bias/vAAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_1/bias/vAAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_2/bias/vAAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v?Adam/transformer_block/multi_head_self_attention/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v2Adam/transformer_block/layer_normalization/gamma/v1Adam/transformer_block/layer_normalization/beta/v4Adam/transformer_block/layer_normalization_1/gamma/v3Adam/transformer_block/layer_normalization_1/beta/v*]
TinV
T2R*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__traced_restore_14120��-
�
�
%__inference_model_layer_call_fn_11580

inputs
unknown:	�
	unknown_0:
��
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_11155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�6
�

@__inference_model_layer_call_and_return_conditional_losses_10553

inputs5
"token_and_position_embedding_10186:	�6
"token_and_position_embedding_10188:
��+
transformer_block_10436:
��&
transformer_block_10438:	�+
transformer_block_10440:
��&
transformer_block_10442:	�+
transformer_block_10444:
��&
transformer_block_10446:	�+
transformer_block_10448:
��&
transformer_block_10450:	�&
transformer_block_10452:	�&
transformer_block_10454:	�*
transformer_block_10456:	�@%
transformer_block_10458:@*
transformer_block_10460:	@�&
transformer_block_10462:	�&
transformer_block_10464:	�&
transformer_block_10466:	� 
dense_6_10506:	�@
dense_6_10508:@
dense_7_10523:@
dense_7_10525:
dense_8_10547:
dense_8_10549:
identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�4token_and_position_embedding/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�+transformer_block/StatefulPartitionedCall_1�
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_10186"token_and_position_embedding_10188*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_10436transformer_block_10438transformer_block_10440transformer_block_10442transformer_block_10444transformer_block_10446transformer_block_10448transformer_block_10450transformer_block_10452transformer_block_10454transformer_block_10456transformer_block_10458transformer_block_10460transformer_block_10462transformer_block_10464transformer_block_10466*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435�
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_10436transformer_block_10438transformer_block_10440transformer_block_10442transformer_block_10444transformer_block_10446transformer_block_10448transformer_block_10450transformer_block_10452transformer_block_10454transformer_block_10456transformer_block_10458transformer_block_10460transformer_block_10462transformer_block_10464transformer_block_10466*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151�
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10492�
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_6_10506dense_6_10508*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_10505�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_10523dense_7_10525*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_10522�
dropout_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10533�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_8_10547dense_8_10549*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_10546w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
B__inference_dense_7_layer_call_and_return_conditional_losses_13335

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_10141
dense_4_input 
dense_4_10130:	�@
dense_4_10132:@ 
dense_5_10135:	@�
dense_5_10137:	�
identity��dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_10130dense_4_10132*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9986�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10135dense_5_10137*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10022|
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_namedense_4_input
��
�(
__inference__wrapped_model_9948
input_1W
Dmodel_token_and_position_embedding_embedding_1_embedding_lookup_9446:	�V
Bmodel_token_and_position_embedding_embedding_embedding_lookup_9452:
��m
Ymodel_transformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource:
��f
Wmodel_transformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource:	�o
[model_transformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:
��h
Ymodel_transformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:	�o
[model_transformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:
��h
Ymodel_transformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:	�o
[model_transformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:
��h
Ymodel_transformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:	�`
Qmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:	�\
Mmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource:	�_
Lmodel_transformer_block_sequential_dense_4_tensordot_readvariableop_resource:	�@X
Jmodel_transformer_block_sequential_dense_4_biasadd_readvariableop_resource:@_
Lmodel_transformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�Y
Jmodel_transformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�b
Smodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�^
Omodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource:	�?
,model_dense_6_matmul_readvariableop_resource:	�@;
-model_dense_6_biasadd_readvariableop_resource:@>
,model_dense_7_matmul_readvariableop_resource:@;
-model_dense_7_biasadd_readvariableop_resource:>
,model_dense_8_matmul_readvariableop_resource:;
-model_dense_8_biasadd_readvariableop_resource:
identity��$model/dense_6/BiasAdd/ReadVariableOp�#model/dense_6/MatMul/ReadVariableOp�$model/dense_7/BiasAdd/ReadVariableOp�#model/dense_7/MatMul/ReadVariableOp�$model/dense_8/BiasAdd/ReadVariableOp�#model/dense_8/MatMul/ReadVariableOp�=model/token_and_position_embedding/embedding/embedding_lookup�?model/token_and_position_embedding/embedding_1/embedding_lookup�Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp�Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp�Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp�Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp�Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp�Nmodel/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp�Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp�Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp�Amodel/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp�Cmodel/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp�Cmodel/transformer_block/sequential/dense_4/Tensordot/ReadVariableOp�Emodel/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp�Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�Cmodel/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp�Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�Emodel/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp_
(model/token_and_position_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:�
6model/token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
8model/token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
8model/token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model/token_and_position_embedding/strided_sliceStridedSlice1model/token_and_position_embedding/Shape:output:0?model/token_and_position_embedding/strided_slice/stack:output:0Amodel/token_and_position_embedding/strided_slice/stack_1:output:0Amodel/token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.model/token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.model/token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
(model/token_and_position_embedding/rangeRange7model/token_and_position_embedding/range/start:output:09model/token_and_position_embedding/strided_slice:output:07model/token_and_position_embedding/range/delta:output:0*
_output_shapes
:�
?model/token_and_position_embedding/embedding_1/embedding_lookupResourceGatherDmodel_token_and_position_embedding_embedding_1_embedding_lookup_94461model/token_and_position_embedding/range:output:0*
Tindices0*W
_classM
KIloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/9446*
_output_shapes
:	�*
dtype0�
Hmodel/token_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityHmodel/token_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*W
_classM
KIloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/9446*
_output_shapes
:	��
Jmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityQmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	��
1model/token_and_position_embedding/embedding/CastCastinput_1*

DstT0*

SrcT0*'
_output_shapes
:����������
=model/token_and_position_embedding/embedding/embedding_lookupResourceGatherBmodel_token_and_position_embedding_embedding_embedding_lookup_94525model/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*U
_classK
IGloc:@model/token_and_position_embedding/embedding/embedding_lookup/9452*,
_output_shapes
:����������*
dtype0�
Fmodel/token_and_position_embedding/embedding/embedding_lookup/IdentityIdentityFmodel/token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*U
_classK
IGloc:@model/token_and_position_embedding/embedding/embedding_lookup/9452*,
_output_shapes
:�����������
Hmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityOmodel/token_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:�����������
&model/token_and_position_embedding/addAddV2Qmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Smodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
7model/transformer_block/multi_head_self_attention/ShapeShape*model/token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Emodel/transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Gmodel/transformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Gmodel/transformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?model/transformer_block/multi_head_self_attention/strided_sliceStridedSlice@model/transformer_block/multi_head_self_attention/Shape:output:0Nmodel/transformer_block/multi_head_self_attention/strided_slice/stack:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fmodel/transformer_block/multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Fmodel/transformer_block/multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Gmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ShapeShape*model/token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2GatherV2Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Xmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV2Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Zmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Gmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Fmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ProdProdSmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Prod_1ProdUmodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Mmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concatConcatV2Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Vmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Gmodel/transformer_block/multi_head_self_attention/dense/Tensordot/stackPackOmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Prod:output:0Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense/Tensordot/transpose	Transpose*model/token_and_position_embedding/add:z:0Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReshapeReshapeOmodel/transformer_block/multi_head_self_attention/dense/Tensordot/transpose:y:0Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot/MatMulMatMulRmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Reshape:output:0Xmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Omodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat_1ConcatV2Smodel/transformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot/Const_2:output:0Xmodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Amodel/transformer_block/multi_head_self_attention/dense/TensordotReshapeRmodel/transformer_block/multi_head_self_attention/dense/Tensordot/MatMul:product:0Smodel/transformer_block/multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Nmodel/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOpWmodel_transformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
?model/transformer_block/multi_head_self_attention/dense/BiasAddBiasAddJmodel/transformer_block/multi_head_self_attention/dense/Tensordot:output:0Vmodel/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShape*model/token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transpose*model/token_and_position_embedding/add:z:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_1/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShape*model/token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transpose*model/token_and_position_embedding/add:z:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_2/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Amodel/transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/multi_head_self_attention/Reshape/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/1:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/2:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
9model/transformer_block/multi_head_self_attention/ReshapeReshapeHmodel/transformer_block/multi_head_self_attention/dense/BiasAdd:output:0Hmodel/transformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
@model/transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
;model/transformer_block/multi_head_self_attention/transpose	TransposeBmodel/transformer_block/multi_head_self_attention/Reshape:output:0Imodel/transformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/multi_head_self_attention/Reshape_1/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_1ReshapeJmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_1	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_1:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/multi_head_self_attention/Reshape_2/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_2ReshapeJmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_2	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_2:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
8model/transformer_block/multi_head_self_attention/MatMulBatchMatMulV2?model/transformer_block/multi_head_self_attention/transpose:y:0Amodel/transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
9model/transformer_block/multi_head_self_attention/Shape_1ShapeAmodel/transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
Gmodel/transformer_block/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Imodel/transformer_block/multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Imodel/transformer_block/multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel/transformer_block/multi_head_self_attention/strided_slice_1StridedSliceBmodel/transformer_block/multi_head_self_attention/Shape_1:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice_1/stack:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_1/stack_1:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6model/transformer_block/multi_head_self_attention/CastCastJmodel/transformer_block/multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6model/transformer_block/multi_head_self_attention/SqrtSqrt:model/transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
9model/transformer_block/multi_head_self_attention/truedivRealDivAmodel/transformer_block/multi_head_self_attention/MatMul:output:0:model/transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
9model/transformer_block/multi_head_self_attention/SoftmaxSoftmax=model/transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
:model/transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2Cmodel/transformer_block/multi_head_self_attention/Softmax:softmax:0Amodel/transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_3	TransposeCmodel/transformer_block/multi_head_self_attention/MatMul_1:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
Amodel/transformer_block/multi_head_self_attention/Reshape_3/shapePackHmodel/transformer_block/multi_head_self_attention/strided_slice:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_3ReshapeAmodel/transformer_block/multi_head_self_attention/transpose_3:y:0Jmodel/transformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShapeDmodel/transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0\model/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdUmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackQmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_3:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense_3/TensordotReshapeTmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddLmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Xmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
(model/transformer_block/dropout/IdentityIdentityJmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
model/transformer_block/addAddV2*model/token_and_position_embedding/add:z:01model/transformer_block/dropout/Identity:output:0*
T0*,
_output_shapes
:�����������
Jmodel/transformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8model/transformer_block/layer_normalization/moments/meanMeanmodel/transformer_block/add:z:0Smodel/transformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/transformer_block/layer_normalization/moments/StopGradientStopGradientAmodel/transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
Emodel/transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencemodel/transformer_block/add:z:0Imodel/transformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Nmodel/transformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<model/transformer_block/layer_normalization/moments/varianceMeanImodel/transformer_block/layer_normalization/moments/SquaredDifference:z:0Wmodel/transformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
9model/transformer_block/layer_normalization/batchnorm/addAddV2Emodel/transformer_block/layer_normalization/moments/variance:output:0Dmodel/transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
;model/transformer_block/layer_normalization/batchnorm/RsqrtRsqrt=model/transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9model/transformer_block/layer_normalization/batchnorm/mulMul?model/transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Pmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/transformer_block/layer_normalization/batchnorm/mul_1Mulmodel/transformer_block/add:z:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
;model/transformer_block/layer_normalization/batchnorm/mul_2MulAmodel/transformer_block/layer_normalization/moments/mean:output:0=model/transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9model/transformer_block/layer_normalization/batchnorm/subSubLmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp:value:0?model/transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
;model/transformer_block/layer_normalization/batchnorm/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/mul_1:z:0=model/transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Cmodel/transformer_block/sequential/dense_4/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
9model/transformer_block/sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
9model/transformer_block/sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
:model/transformer_block/sequential/dense_4/Tensordot/ShapeShape?model/transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Bmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_4/Tensordot/GatherV2GatherV2Cmodel/transformer_block/sequential/dense_4/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_4/Tensordot/free:output:0Kmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_4/Tensordot/GatherV2_1GatherV2Cmodel/transformer_block/sequential/dense_4/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_4/Tensordot/axes:output:0Mmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
:model/transformer_block/sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9model/transformer_block/sequential/dense_4/Tensordot/ProdProdFmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
<model/transformer_block/sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_4/Tensordot/Prod_1ProdHmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2_1:output:0Emodel/transformer_block/sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
@model/transformer_block/sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;model/transformer_block/sequential/dense_4/Tensordot/concatConcatV2Bmodel/transformer_block/sequential/dense_4/Tensordot/free:output:0Bmodel/transformer_block/sequential/dense_4/Tensordot/axes:output:0Imodel/transformer_block/sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
:model/transformer_block/sequential/dense_4/Tensordot/stackPackBmodel/transformer_block/sequential/dense_4/Tensordot/Prod:output:0Dmodel/transformer_block/sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
>model/transformer_block/sequential/dense_4/Tensordot/transpose	Transpose?model/transformer_block/layer_normalization/batchnorm/add_1:z:0Dmodel/transformer_block/sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
<model/transformer_block/sequential/dense_4/Tensordot/ReshapeReshapeBmodel/transformer_block/sequential/dense_4/Tensordot/transpose:y:0Cmodel/transformer_block/sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
;model/transformer_block/sequential/dense_4/Tensordot/MatMulMatMulEmodel/transformer_block/sequential/dense_4/Tensordot/Reshape:output:0Kmodel/transformer_block/sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
<model/transformer_block/sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Bmodel/transformer_block/sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_4/Tensordot/concat_1ConcatV2Fmodel/transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential/dense_4/Tensordot/Const_2:output:0Kmodel/transformer_block/sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
4model/transformer_block/sequential/dense_4/TensordotReshapeEmodel/transformer_block/sequential/dense_4/Tensordot/MatMul:product:0Fmodel/transformer_block/sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
Amodel/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
2model/transformer_block/sequential/dense_4/BiasAddBiasAdd=model/transformer_block/sequential/dense_4/Tensordot:output:0Imodel/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
/model/transformer_block/sequential/dense_4/ReluRelu;model/transformer_block/sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
9model/transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
9model/transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
:model/transformer_block/sequential/dense_5/Tensordot/ShapeShape=model/transformer_block/sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:�
Bmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2Cmodel/transformer_block/sequential/dense_5/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/free:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2Cmodel/transformer_block/sequential/dense_5/Tensordot/Shape:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/axes:output:0Mmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
:model/transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
9model/transformer_block/sequential/dense_5/Tensordot/ProdProdFmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0Cmodel/transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
<model/transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_5/Tensordot/Prod_1ProdHmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0Emodel/transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
@model/transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;model/transformer_block/sequential/dense_5/Tensordot/concatConcatV2Bmodel/transformer_block/sequential/dense_5/Tensordot/free:output:0Bmodel/transformer_block/sequential/dense_5/Tensordot/axes:output:0Imodel/transformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
:model/transformer_block/sequential/dense_5/Tensordot/stackPackBmodel/transformer_block/sequential/dense_5/Tensordot/Prod:output:0Dmodel/transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
>model/transformer_block/sequential/dense_5/Tensordot/transpose	Transpose=model/transformer_block/sequential/dense_4/Relu:activations:0Dmodel/transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
<model/transformer_block/sequential/dense_5/Tensordot/ReshapeReshapeBmodel/transformer_block/sequential/dense_5/Tensordot/transpose:y:0Cmodel/transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
;model/transformer_block/sequential/dense_5/Tensordot/MatMulMatMulEmodel/transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
<model/transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Bmodel/transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2Fmodel/transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0Emodel/transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
4model/transformer_block/sequential/dense_5/TensordotReshapeEmodel/transformer_block/sequential/dense_5/Tensordot/MatMul:product:0Fmodel/transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2model/transformer_block/sequential/dense_5/BiasAddBiasAdd=model/transformer_block/sequential/dense_5/Tensordot:output:0Imodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/transformer_block/dropout_1/IdentityIdentity;model/transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
model/transformer_block/add_1AddV2?model/transformer_block/layer_normalization/batchnorm/add_1:z:03model/transformer_block/dropout_1/Identity:output:0*
T0*,
_output_shapes
:�����������
Lmodel/transformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:model/transformer_block/layer_normalization_1/moments/meanMean!model/transformer_block/add_1:z:0Umodel/transformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Bmodel/transformer_block/layer_normalization_1/moments/StopGradientStopGradientCmodel/transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Gmodel/transformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifference!model/transformer_block/add_1:z:0Kmodel/transformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Pmodel/transformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
>model/transformer_block/layer_normalization_1/moments/varianceMeanKmodel/transformer_block/layer_normalization_1/moments/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
=model/transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
;model/transformer_block/layer_normalization_1/batchnorm/addAddV2Gmodel/transformer_block/layer_normalization_1/moments/variance:output:0Fmodel/transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
=model/transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt?model/transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;model/transformer_block/layer_normalization_1/batchnorm/mulMulAmodel/transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Rmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization_1/batchnorm/mul_1Mul!model/transformer_block/add_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization_1/batchnorm/mul_2MulCmodel/transformer_block/layer_normalization_1/moments/mean:output:0?model/transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;model/transformer_block/layer_normalization_1/batchnorm/subSubNmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization_1/batchnorm/add_1AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/mul_1:z:0?model/transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
9model/transformer_block/multi_head_self_attention/Shape_2ShapeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Gmodel/transformer_block/multi_head_self_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Imodel/transformer_block/multi_head_self_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Imodel/transformer_block/multi_head_self_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel/transformer_block/multi_head_self_attention/strided_slice_2StridedSliceBmodel/transformer_block/multi_head_self_attention/Shape_2:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice_2/stack:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_2/stack_1:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ShapeShapeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2GatherV2Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Zmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1GatherV2Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0\model/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Hmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ProdProdUmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Kmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1ProdWmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1:output:0Tmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Omodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concatConcatV2Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0Xmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Imodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/stackPackQmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Prod:output:0Smodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Mmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/transpose	TransposeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Smodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReshapeReshapeQmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/transpose:y:0Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Jmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/MatMulMatMulTmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Reshape:output:0Zmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Kmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Qmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1ConcatV2Umodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2:output:0Zmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Cmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1ReshapeTmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/MatMul:product:0Umodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Pmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpReadVariableOpWmodel_transformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Amodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1BiasAddLmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1:output:0Xmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ShapeShapeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0\model/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Pmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0^model/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ProdProdWmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Mmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1ProdYmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1:output:0Vmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Qmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concatConcatV2Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/stackPackSmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod:output:0Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Omodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose	TransposeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Umodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Mmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReshapeReshapeSmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose:y:0Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Lmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMulMatMulVmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Reshape:output:0\model/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Mmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Smodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1ConcatV2Wmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Vmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2:output:0\model/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Emodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1ReshapeVmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMul:product:0Wmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Rmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1BiasAddNmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1:output:0Zmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ShapeShapeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0\model/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Pmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0^model/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ProdProdWmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Mmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1ProdYmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1:output:0Vmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Qmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concatConcatV2Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/stackPackSmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod:output:0Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Omodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose	TransposeAmodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:0Umodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Mmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReshapeReshapeSmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose:y:0Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Lmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMulMatMulVmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Reshape:output:0\model/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Mmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Smodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1ConcatV2Wmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Vmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2:output:0\model/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Emodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1ReshapeVmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMul:product:0Wmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Rmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1BiasAddNmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1:output:0Zmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/multi_head_self_attention/Reshape_4/shapePackJmodel/transformer_block/multi_head_self_attention/strided_slice_2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_4/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_4ReshapeJmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_4/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_4	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_4:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_4/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/multi_head_self_attention/Reshape_5/shapePackJmodel/transformer_block/multi_head_self_attention/strided_slice_2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_5/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_5ReshapeLmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_5/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_5/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_5	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_5:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_5/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
value	B :�
Cmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/multi_head_self_attention/Reshape_6/shapePackJmodel/transformer_block/multi_head_self_attention/strided_slice_2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_6/shape/3:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_6ReshapeLmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1:output:0Jmodel/transformer_block/multi_head_self_attention/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_6/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_6	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_6:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_6/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
:model/transformer_block/multi_head_self_attention/MatMul_2BatchMatMulV2Amodel/transformer_block/multi_head_self_attention/transpose_4:y:0Amodel/transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
9model/transformer_block/multi_head_self_attention/Shape_3ShapeAmodel/transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*
_output_shapes
:�
Gmodel/transformer_block/multi_head_self_attention/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Imodel/transformer_block/multi_head_self_attention/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Imodel/transformer_block/multi_head_self_attention/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Amodel/transformer_block/multi_head_self_attention/strided_slice_3StridedSliceBmodel/transformer_block/multi_head_self_attention/Shape_3:output:0Pmodel/transformer_block/multi_head_self_attention/strided_slice_3/stack:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_3/stack_1:output:0Rmodel/transformer_block/multi_head_self_attention/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8model/transformer_block/multi_head_self_attention/Cast_1CastJmodel/transformer_block/multi_head_self_attention/strided_slice_3:output:0*

DstT0*

SrcT0*
_output_shapes
: �
8model/transformer_block/multi_head_self_attention/Sqrt_1Sqrt<model/transformer_block/multi_head_self_attention/Cast_1:y:0*
T0*
_output_shapes
: �
;model/transformer_block/multi_head_self_attention/truediv_1RealDivCmodel/transformer_block/multi_head_self_attention/MatMul_2:output:0<model/transformer_block/multi_head_self_attention/Sqrt_1:y:0*
T0*A
_output_shapes/
-:+����������������������������
;model/transformer_block/multi_head_self_attention/Softmax_1Softmax?model/transformer_block/multi_head_self_attention/truediv_1:z:0*
T0*A
_output_shapes/
-:+����������������������������
:model/transformer_block/multi_head_self_attention/MatMul_3BatchMatMulV2Emodel/transformer_block/multi_head_self_attention/Softmax_1:softmax:0Amodel/transformer_block/multi_head_self_attention/transpose_6:y:0*
T0*8
_output_shapes&
$:"������������������ �
Bmodel/transformer_block/multi_head_self_attention/transpose_7/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=model/transformer_block/multi_head_self_attention/transpose_7	TransposeCmodel/transformer_block/multi_head_self_attention/MatMul_3:output:0Kmodel/transformer_block/multi_head_self_attention/transpose_7/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
Cmodel/transformer_block/multi_head_self_attention/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Cmodel/transformer_block/multi_head_self_attention/Reshape_7/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
Amodel/transformer_block/multi_head_self_attention/Reshape_7/shapePackJmodel/transformer_block/multi_head_self_attention/strided_slice_2:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_7/shape/1:output:0Lmodel/transformer_block/multi_head_self_attention/Reshape_7/shape/2:output:0*
N*
T0*
_output_shapes
:�
;model/transformer_block/multi_head_self_attention/Reshape_7ReshapeAmodel/transformer_block/multi_head_self_attention/transpose_7:y:0Jmodel/transformer_block/multi_head_self_attention/Reshape_7/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpReadVariableOp[model_transformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ShapeShapeDmodel/transformer_block/multi_head_self_attention/Reshape_7:output:0*
T0*
_output_shapes
:�
Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0\model/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Pmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1GatherV2Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0^model/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Jmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ProdProdWmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Mmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1ProdYmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1:output:0Vmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Qmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concatConcatV2Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Kmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/stackPackSmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod:output:0Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Omodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose	TransposeDmodel/transformer_block/multi_head_self_attention/Reshape_7:output:0Umodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Mmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReshapeReshapeSmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose:y:0Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Lmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMulMatMulVmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Reshape:output:0\model/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Mmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Smodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Nmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1ConcatV2Wmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Vmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2:output:0\model/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
Emodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1ReshapeVmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMul:product:0Wmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Rmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpYmodel_transformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1BiasAddNmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1:output:0Zmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
*model/transformer_block/dropout/Identity_1IdentityLmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:��������������������
model/transformer_block/add_2AddV2Amodel/transformer_block/layer_normalization_1/batchnorm/add_1:z:03model/transformer_block/dropout/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Lmodel/transformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:model/transformer_block/layer_normalization/moments_1/meanMean!model/transformer_block/add_2:z:0Umodel/transformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Bmodel/transformer_block/layer_normalization/moments_1/StopGradientStopGradientCmodel/transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Gmodel/transformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifference!model/transformer_block/add_2:z:0Kmodel/transformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Pmodel/transformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
>model/transformer_block/layer_normalization/moments_1/varianceMeanKmodel/transformer_block/layer_normalization/moments_1/SquaredDifference:z:0Ymodel/transformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
=model/transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
;model/transformer_block/layer_normalization/batchnorm_1/addAddV2Gmodel/transformer_block/layer_normalization/moments_1/variance:output:0Fmodel/transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
=model/transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt?model/transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpQmodel_transformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;model/transformer_block/layer_normalization/batchnorm_1/mulMulAmodel/transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Rmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization/batchnorm_1/mul_1Mul!model/transformer_block/add_2:z:0?model/transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization/batchnorm_1/mul_2MulCmodel/transformer_block/layer_normalization/moments_1/mean:output:0?model/transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpMmodel_transformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;model/transformer_block/layer_normalization/batchnorm_1/subSubNmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0Amodel/transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
=model/transformer_block/layer_normalization/batchnorm_1/add_1AddV2Amodel/transformer_block/layer_normalization/batchnorm_1/mul_1:z:0?model/transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:�����������
Emodel/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
;model/transformer_block/sequential/dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
;model/transformer_block/sequential/dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
<model/transformer_block/sequential/dense_4/Tensordot_1/ShapeShapeAmodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_4/Tensordot_1/GatherV2GatherV2Emodel/transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0Dmodel/transformer_block/sequential/dense_4/Tensordot_1/free:output:0Mmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Fmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1GatherV2Emodel/transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0Dmodel/transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Omodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
<model/transformer_block/sequential/dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_4/Tensordot_1/ProdProdHmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0Emodel/transformer_block/sequential/dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
>model/transformer_block/sequential/dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
=model/transformer_block/sequential/dense_4/Tensordot_1/Prod_1ProdJmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1:output:0Gmodel/transformer_block/sequential/dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Bmodel/transformer_block/sequential/dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_4/Tensordot_1/concatConcatV2Dmodel/transformer_block/sequential/dense_4/Tensordot_1/free:output:0Dmodel/transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Kmodel/transformer_block/sequential/dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
<model/transformer_block/sequential/dense_4/Tensordot_1/stackPackDmodel/transformer_block/sequential/dense_4/Tensordot_1/Prod:output:0Fmodel/transformer_block/sequential/dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
@model/transformer_block/sequential/dense_4/Tensordot_1/transpose	TransposeAmodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:0Fmodel/transformer_block/sequential/dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
>model/transformer_block/sequential/dense_4/Tensordot_1/ReshapeReshapeDmodel/transformer_block/sequential/dense_4/Tensordot_1/transpose:y:0Emodel/transformer_block/sequential/dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
=model/transformer_block/sequential/dense_4/Tensordot_1/MatMulMatMulGmodel/transformer_block/sequential/dense_4/Tensordot_1/Reshape:output:0Mmodel/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
>model/transformer_block/sequential/dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
Dmodel/transformer_block/sequential/dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_4/Tensordot_1/concat_1ConcatV2Hmodel/transformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0Gmodel/transformer_block/sequential/dense_4/Tensordot_1/Const_2:output:0Mmodel/transformer_block/sequential/dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
6model/transformer_block/sequential/dense_4/Tensordot_1ReshapeGmodel/transformer_block/sequential/dense_4/Tensordot_1/MatMul:product:0Hmodel/transformer_block/sequential/dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������@�
Cmodel/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
4model/transformer_block/sequential/dense_4/BiasAdd_1BiasAdd?model/transformer_block/sequential/dense_4/Tensordot_1:output:0Kmodel/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
1model/transformer_block/sequential/dense_4/Relu_1Relu=model/transformer_block/sequential/dense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������@�
Emodel/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpReadVariableOpLmodel_transformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0�
;model/transformer_block/sequential/dense_5/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
;model/transformer_block/sequential/dense_5/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
<model/transformer_block/sequential/dense_5/Tensordot_1/ShapeShape?model/transformer_block/sequential/dense_4/Relu_1:activations:0*
T0*
_output_shapes
:�
Dmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_5/Tensordot_1/GatherV2GatherV2Emodel/transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0Dmodel/transformer_block/sequential/dense_5/Tensordot_1/free:output:0Mmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Fmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Amodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1GatherV2Emodel/transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0Dmodel/transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Omodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
<model/transformer_block/sequential/dense_5/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
;model/transformer_block/sequential/dense_5/Tensordot_1/ProdProdHmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0Emodel/transformer_block/sequential/dense_5/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
>model/transformer_block/sequential/dense_5/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
=model/transformer_block/sequential/dense_5/Tensordot_1/Prod_1ProdJmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1:output:0Gmodel/transformer_block/sequential/dense_5/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Bmodel/transformer_block/sequential/dense_5/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
=model/transformer_block/sequential/dense_5/Tensordot_1/concatConcatV2Dmodel/transformer_block/sequential/dense_5/Tensordot_1/free:output:0Dmodel/transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Kmodel/transformer_block/sequential/dense_5/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
<model/transformer_block/sequential/dense_5/Tensordot_1/stackPackDmodel/transformer_block/sequential/dense_5/Tensordot_1/Prod:output:0Fmodel/transformer_block/sequential/dense_5/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
@model/transformer_block/sequential/dense_5/Tensordot_1/transpose	Transpose?model/transformer_block/sequential/dense_4/Relu_1:activations:0Fmodel/transformer_block/sequential/dense_5/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:���������@�
>model/transformer_block/sequential/dense_5/Tensordot_1/ReshapeReshapeDmodel/transformer_block/sequential/dense_5/Tensordot_1/transpose:y:0Emodel/transformer_block/sequential/dense_5/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
=model/transformer_block/sequential/dense_5/Tensordot_1/MatMulMatMulGmodel/transformer_block/sequential/dense_5/Tensordot_1/Reshape:output:0Mmodel/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>model/transformer_block/sequential/dense_5/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Dmodel/transformer_block/sequential/dense_5/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
?model/transformer_block/sequential/dense_5/Tensordot_1/concat_1ConcatV2Hmodel/transformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0Gmodel/transformer_block/sequential/dense_5/Tensordot_1/Const_2:output:0Mmodel/transformer_block/sequential/dense_5/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
6model/transformer_block/sequential/dense_5/Tensordot_1ReshapeGmodel/transformer_block/sequential/dense_5/Tensordot_1/MatMul:product:0Hmodel/transformer_block/sequential/dense_5/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Cmodel/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOpReadVariableOpJmodel_transformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/transformer_block/sequential/dense_5/BiasAdd_1BiasAdd?model/transformer_block/sequential/dense_5/Tensordot_1:output:0Kmodel/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
,model/transformer_block/dropout_1/Identity_1Identity=model/transformer_block/sequential/dense_5/BiasAdd_1:output:0*
T0*,
_output_shapes
:�����������
model/transformer_block/add_3AddV2Amodel/transformer_block/layer_normalization/batchnorm_1/add_1:z:05model/transformer_block/dropout_1/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Nmodel/transformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
<model/transformer_block/layer_normalization_1/moments_1/meanMean!model/transformer_block/add_3:z:0Wmodel/transformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Dmodel/transformer_block/layer_normalization_1/moments_1/StopGradientStopGradientEmodel/transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Imodel/transformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifference!model/transformer_block/add_3:z:0Mmodel/transformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Rmodel/transformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
@model/transformer_block/layer_normalization_1/moments_1/varianceMeanMmodel/transformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0[model/transformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
?model/transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
=model/transformer_block/layer_normalization_1/batchnorm_1/addAddV2Imodel/transformer_block/layer_normalization_1/moments_1/variance:output:0Hmodel/transformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
?model/transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrtAmodel/transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpSmodel_transformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/transformer_block/layer_normalization_1/batchnorm_1/mulMulCmodel/transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Tmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/transformer_block/layer_normalization_1/batchnorm_1/mul_1Mul!model/transformer_block/add_3:z:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
?model/transformer_block/layer_normalization_1/batchnorm_1/mul_2MulEmodel/transformer_block/layer_normalization_1/moments_1/mean:output:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpOmodel_transformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=model/transformer_block/layer_normalization_1/batchnorm_1/subSubPmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0Cmodel/transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
?model/transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2Cmodel/transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0Amodel/transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:����������w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMeanCmodel/transformer_block/layer_normalization_1/batchnorm_1/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
model/dropout_2/IdentityIdentity,model/global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:�����������
#model/dense_6/MatMul/ReadVariableOpReadVariableOp,model_dense_6_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
model/dense_6/MatMulMatMul!model/dropout_2/Identity:output:0+model/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
$model/dense_6/BiasAdd/ReadVariableOpReadVariableOp-model_dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
model/dense_6/BiasAddBiasAddmodel/dense_6/MatMul:product:0,model/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@l
model/dense_6/SeluSelumodel/dense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_7/MatMul/ReadVariableOpReadVariableOp,model_dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_7/MatMulMatMul model/dense_6/Selu:activations:0+model/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_7/BiasAdd/ReadVariableOpReadVariableOp-model_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_7/BiasAddBiasAddmodel/dense_7/MatMul:product:0,model/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������l
model/dense_7/SeluSelumodel/dense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������x
model/dropout_3/IdentityIdentity model/dense_7/Selu:activations:0*
T0*'
_output_shapes
:����������
#model/dense_8/MatMul/ReadVariableOpReadVariableOp,model_dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_8/MatMulMatMul!model/dropout_3/Identity:output:0+model/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_8/BiasAdd/ReadVariableOpReadVariableOp-model_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_8/BiasAddBiasAddmodel/dense_8/MatMul:product:0,model/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_8/SoftmaxSoftmaxmodel/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^model/dense_6/BiasAdd/ReadVariableOp$^model/dense_6/MatMul/ReadVariableOp%^model/dense_7/BiasAdd/ReadVariableOp$^model/dense_7/MatMul/ReadVariableOp%^model/dense_8/BiasAdd/ReadVariableOp$^model/dense_8/MatMul/ReadVariableOp>^model/token_and_position_embedding/embedding/embedding_lookup@^model/token_and_position_embedding/embedding_1/embedding_lookupE^model/transformer_block/layer_normalization/batchnorm/ReadVariableOpI^model/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpG^model/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpK^model/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpG^model/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpK^model/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpI^model/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpM^model/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpO^model/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpU^model/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpU^model/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpQ^model/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpS^model/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpU^model/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpB^model/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOpD^model/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOpD^model/transformer_block/sequential/dense_4/Tensordot/ReadVariableOpF^model/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOpB^model/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpD^model/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOpD^model/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpF^model/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2L
$model/dense_6/BiasAdd/ReadVariableOp$model/dense_6/BiasAdd/ReadVariableOp2J
#model/dense_6/MatMul/ReadVariableOp#model/dense_6/MatMul/ReadVariableOp2L
$model/dense_7/BiasAdd/ReadVariableOp$model/dense_7/BiasAdd/ReadVariableOp2J
#model/dense_7/MatMul/ReadVariableOp#model/dense_7/MatMul/ReadVariableOp2L
$model/dense_8/BiasAdd/ReadVariableOp$model/dense_8/BiasAdd/ReadVariableOp2J
#model/dense_8/MatMul/ReadVariableOp#model/dense_8/MatMul/ReadVariableOp2~
=model/token_and_position_embedding/embedding/embedding_lookup=model/token_and_position_embedding/embedding/embedding_lookup2�
?model/token_and_position_embedding/embedding_1/embedding_lookup?model/token_and_position_embedding/embedding_1/embedding_lookup2�
Dmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOpDmodel/transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Hmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpHmodel/transformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
Fmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOpFmodel/transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2�
Jmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpJmodel/transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2�
Fmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOpFmodel/transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Jmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpJmodel/transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Hmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpHmodel/transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2�
Lmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpLmodel/transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2�
Nmodel/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpNmodel/transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Tmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpTmodel/transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Tmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpTmodel/transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp2�
Pmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpPmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp2�
Rmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpRmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Tmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpTmodel/transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp2�
Amodel/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOpAmodel/transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOpCmodel/transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_4/Tensordot/ReadVariableOpCmodel/transformer_block/sequential/dense_4/Tensordot/ReadVariableOp2�
Emodel/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOpEmodel/transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp2�
Amodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpAmodel/transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOpCmodel/transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp2�
Cmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOpCmodel/transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2�
Emodel/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpEmodel/transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
<__inference_token_and_position_embedding_layer_call_fn_12657
x
unknown:	�
	unknown_0:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
'
_output_shapes
:���������

_user_specified_namex
�

�
B__inference_dense_6_layer_call_and_return_conditional_losses_10505

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
%__inference_model_layer_call_fn_11527

inputs
unknown:	�
	unknown_0:
��
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_10553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
)__inference_dropout_3_layer_call_fn_13345

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10634o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
T
8__inference_global_average_pooling1d_layer_call_fn_13262

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435

inputsU
Amulti_head_self_attention_dense_tensordot_readvariableop_resource:
��N
?multi_head_self_attention_dense_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�G
4sequential_dense_4_tensordot_readvariableop_resource:	�@@
2sequential_dense_4_biasadd_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�6multi_head_self_attention/dense/BiasAdd/ReadVariableOp�8multi_head_self_attention/dense/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�)sequential/dense_4/BiasAdd/ReadVariableOp�+sequential/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0x
.multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_self_attention/dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/GatherV2GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/free:output:0@multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/axes:output:0Bmulti_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.multi_head_self_attention/dense/Tensordot/ProdProd;multi_head_self_attention/dense/Tensordot/GatherV2:output:08multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense/Tensordot/Prod_1Prod=multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0:multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0multi_head_self_attention/dense/Tensordot/concatConcatV27multi_head_self_attention/dense/Tensordot/free:output:07multi_head_self_attention/dense/Tensordot/axes:output:0>multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/multi_head_self_attention/dense/Tensordot/stackPack7multi_head_self_attention/dense/Tensordot/Prod:output:09multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3multi_head_self_attention/dense/Tensordot/transpose	Transposeinputs9multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1multi_head_self_attention/dense/Tensordot/ReshapeReshape7multi_head_self_attention/dense/Tensordot/transpose:y:08multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0multi_head_self_attention/dense/Tensordot/MatMulMatMul:multi_head_self_attention/dense/Tensordot/Reshape:output:0@multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������|
1multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�y
7multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/concat_1ConcatV2;multi_head_self_attention/dense/Tensordot/GatherV2:output:0:multi_head_self_attention/dense/Tensordot/Const_2:output:0@multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)multi_head_self_attention/dense/TensordotReshape:multi_head_self_attention/dense/Tensordot/MatMul:product:0;multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
6multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOp?multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'multi_head_self_attention/dense/BiasAddBiasAdd2multi_head_self_attention/dense/Tensordot:output:0>multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape0multi_head_self_attention/dense/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_1/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(z
!multi_head_self_attention/Shape_1Shape)multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)multi_head_self_attention/strided_slice_1StridedSlice*multi_head_self_attention/Shape_1:output:08multi_head_self_attention/strided_slice_1/stack:output:0:multi_head_self_attention/strided_slice_1/stack_1:output:0:multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
multi_head_self_attention/CastCast2multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������n
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_3/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
dropout/IdentityIdentity2multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������f
addAddV2inputsdropout/Identity:output:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
+sequential/dense_4/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_4/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/GatherV2GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/free:output:03sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_4/Tensordot/GatherV2_1GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/axes:output:05sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_4/Tensordot/ProdProd.sequential/dense_4/Tensordot/GatherV2:output:0+sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_4/Tensordot/Prod_1Prod0sequential/dense_4/Tensordot/GatherV2_1:output:0-sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_4/Tensordot/concatConcatV2*sequential/dense_4/Tensordot/free:output:0*sequential/dense_4/Tensordot/axes:output:01sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_4/Tensordot/stackPack*sequential/dense_4/Tensordot/Prod:output:0,sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_4/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
$sequential/dense_4/Tensordot/ReshapeReshape*sequential/dense_4/Tensordot/transpose:y:0+sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_4/Tensordot/MatMulMatMul-sequential/dense_4/Tensordot/Reshape:output:03sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/concat_1ConcatV2.sequential/dense_4/Tensordot/GatherV2:output:0-sequential/dense_4/Tensordot/Const_2:output:03sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_4/TensordotReshape-sequential/dense_4/Tensordot/MatMul:product:0.sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_4/BiasAddBiasAdd%sequential/dense_4/Tensordot:output:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@z
sequential/dense_4/ReluRelu#sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_5/Tensordot/ShapeShape%sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose%sequential/dense_4/Relu:activations:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������z
dropout_1/IdentityIdentity#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp7^multi_head_self_attention/dense/BiasAdd/ReadVariableOp9^multi_head_self_attention/dense/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp,^sequential/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2p
6multi_head_self_attention/dense/BiasAdd/ReadVariableOp6multi_head_self_attention/dense/BiasAdd/ReadVariableOp2t
8multi_head_self_attention/dense/Tensordot/ReadVariableOp8multi_head_self_attention/dense/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2Z
+sequential/dense_4/Tensordot/ReadVariableOp+sequential/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_8_layer_call_fn_13371

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_10546o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�%
@__inference_model_layer_call_and_return_conditional_losses_12648

inputsR
?token_and_position_embedding_embedding_1_embedding_lookup_12104:	�Q
=token_and_position_embedding_embedding_embedding_lookup_12110:
��g
Stransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource:
��`
Qtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:	�Z
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:	�V
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_4_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_4_biasadd_readvariableop_resource:@Y
Ftransformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�S
Dtransformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�\
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�X
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:
identity��dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�7token_and_position_embedding/embedding/embedding_lookup�9token_and_position_embedding/embedding_1/embedding_lookup�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp�Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp�Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp�Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp�;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp�=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp�?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp�;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp�=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:�
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:�
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_12104+token_and_position_embedding/range:output:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/12104*
_output_shapes
:	�*
dtype0�
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/12104*
_output_shapes
:	��
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	�|
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
7token_and_position_embedding/embedding/embedding_lookupResourceGather=token_and_position_embedding_embedding_embedding_lookup_12110/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/12110*,
_output_shapes
:����������*
dtype0�
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/12110*,
_output_shapes
:�����������
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:�����������
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
1transformer_block/multi_head_self_attention/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Atransformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Atransformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9transformer_block/multi_head_self_attention/strided_sliceStridedSlice:transformer_block/multi_head_self_attention/Shape:output:0Htransformer_block/multi_head_self_attention/strided_slice/stack:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
@transformer_block/multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
@transformer_block/multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Atransformer_block/multi_head_self_attention/dense/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2GatherV2Jtransformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV2Jtransformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
@transformer_block/multi_head_self_attention/dense/Tensordot/ProdProdMtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Jtransformer_block/multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Ctransformer_block/multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense/Tensordot/Prod_1ProdOtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Btransformer_block/multi_head_self_attention/dense/Tensordot/concatConcatV2Itransformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Ptransformer_block/multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/dense/Tensordot/stackPackItransformer_block/multi_head_self_attention/dense/Tensordot/Prod:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Ktransformer_block/multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Ctransformer_block/multi_head_self_attention/dense/Tensordot/ReshapeReshapeItransformer_block/multi_head_self_attention/dense/Tensordot/transpose:y:0Jtransformer_block/multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Btransformer_block/multi_head_self_attention/dense/Tensordot/MatMulMatMulLtransformer_block/multi_head_self_attention/dense/Tensordot/Reshape:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ctransformer_block/multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Itransformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1ConcatV2Mtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot/Const_2:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
;transformer_block/multi_head_self_attention/dense/TensordotReshapeLtransformer_block/multi_head_self_attention/dense/Tensordot/MatMul:product:0Mtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOpQtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer_block/multi_head_self_attention/dense/BiasAddBiasAddDtransformer_block/multi_head_self_attention/dense/Tensordot:output:0Ptransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_1/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_2/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������}
;transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/multi_head_self_attention/Reshape/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/1:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/2:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
3transformer_block/multi_head_self_attention/ReshapeReshapeBtransformer_block/multi_head_self_attention/dense/BiasAdd:output:0Btransformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
:transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
5transformer_block/multi_head_self_attention/transpose	Transpose<transformer_block/multi_head_self_attention/Reshape:output:0Ctransformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_1/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_1ReshapeDtransformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_1	Transpose>transformer_block/multi_head_self_attention/Reshape_1:output:0Etransformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_2/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_2ReshapeDtransformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_2	Transpose>transformer_block/multi_head_self_attention/Reshape_2:output:0Etransformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
2transformer_block/multi_head_self_attention/MatMulBatchMatMulV29transformer_block/multi_head_self_attention/transpose:y:0;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
3transformer_block/multi_head_self_attention/Shape_1Shape;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Ctransformer_block/multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_1StridedSlice<transformer_block/multi_head_self_attention/Shape_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice_1/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_1/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0transformer_block/multi_head_self_attention/CastCastDtransformer_block/multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0transformer_block/multi_head_self_attention/SqrtSqrt4transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
3transformer_block/multi_head_self_attention/truedivRealDiv;transformer_block/multi_head_self_attention/MatMul:output:04transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
3transformer_block/multi_head_self_attention/SoftmaxSoftmax7transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2=transformer_block/multi_head_self_attention/Softmax:softmax:0;transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_3	Transpose=transformer_block/multi_head_self_attention/MatMul_1:output:0Etransformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
=transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
;transformer_block/multi_head_self_attention/Reshape_3/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_3Reshape;transformer_block/multi_head_self_attention/transpose_3:y:0Dtransformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShape>transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_3:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_3/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������l
'transformer_block/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
%transformer_block/dropout/dropout/MulMulDtransformer_block/multi_head_self_attention/dense_3/BiasAdd:output:00transformer_block/dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:��������������������
'transformer_block/dropout/dropout/ShapeShapeDtransformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
>transformer_block/dropout/dropout/random_uniform/RandomUniformRandomUniform0transformer_block/dropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0u
0transformer_block/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
.transformer_block/dropout/dropout/GreaterEqualGreaterEqualGtransformer_block/dropout/dropout/random_uniform/RandomUniform:output:09transformer_block/dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:��������������������
&transformer_block/dropout/dropout/CastCast2transformer_block/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:��������������������
'transformer_block/dropout/dropout/Mul_1Mul)transformer_block/dropout/dropout/Mul:z:0*transformer_block/dropout/dropout/Cast:y:0*
T0*5
_output_shapes#
!:��������������������
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:�����������
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
=transformer_block/sequential/dense_4/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0}
3transformer_block/sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_4/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_4/Tensordot/Shape:output:0<transformer_block/sequential/dense_4/Tensordot/free:output:0Etransformer_block/sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_4/Tensordot/Shape:output:0<transformer_block/sequential/dense_4/Tensordot/axes:output:0Gtransformer_block/sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_4/Tensordot/ProdProd@transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_4/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_4/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_4/Tensordot/concatConcatV2<transformer_block/sequential/dense_4/Tensordot/free:output:0<transformer_block/sequential/dense_4/Tensordot/axes:output:0Ctransformer_block/sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_4/Tensordot/stackPack<transformer_block/sequential/dense_4/Tensordot/Prod:output:0>transformer_block/sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_4/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0>transformer_block/sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
6transformer_block/sequential/dense_4/Tensordot/ReshapeReshape<transformer_block/sequential/dense_4/Tensordot/transpose:y:0=transformer_block/sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_4/Tensordot/MatMulMatMul?transformer_block/sequential/dense_4/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6transformer_block/sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<transformer_block/sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_4/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_4/TensordotReshape?transformer_block/sequential/dense_4/Tensordot/MatMul:product:0@transformer_block/sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,transformer_block/sequential/dense_4/BiasAddBiasAdd7transformer_block/sequential/dense_4/Tensordot:output:0Ctransformer_block/sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
)transformer_block/sequential/dense_4/ReluRelu5transformer_block/sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0}
3transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_5/Tensordot/ShapeShape7transformer_block/sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/free:output:0Etransformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Gtransformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_5/Tensordot/ProdProd@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_5/Tensordot/concatConcatV2<transformer_block/sequential/dense_5/Tensordot/free:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Ctransformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_5/Tensordot/stackPack<transformer_block/sequential/dense_5/Tensordot/Prod:output:0>transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_5/Tensordot/transpose	Transpose7transformer_block/sequential/dense_4/Relu:activations:0>transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
6transformer_block/sequential/dense_5/Tensordot/ReshapeReshape<transformer_block/sequential/dense_5/Tensordot/transpose:y:0=transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_5/Tensordot/MatMulMatMul?transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�~
<transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_5/TensordotReshape?transformer_block/sequential/dense_5/Tensordot/MatMul:product:0@transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_block/sequential/dense_5/BiasAddBiasAdd7transformer_block/sequential/dense_5/Tensordot:output:0Ctransformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������n
)transformer_block/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
'transformer_block/dropout_1/dropout/MulMul5transformer_block/sequential/dense_5/BiasAdd:output:02transformer_block/dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:�����������
)transformer_block/dropout_1/dropout/ShapeShape5transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:�
@transformer_block/dropout_1/dropout/random_uniform/RandomUniformRandomUniform2transformer_block/dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0w
2transformer_block/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
0transformer_block/dropout_1/dropout/GreaterEqualGreaterEqualItransformer_block/dropout_1/dropout/random_uniform/RandomUniform:output:0;transformer_block/dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
(transformer_block/dropout_1/dropout/CastCast4transformer_block/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
)transformer_block/dropout_1/dropout/Mul_1Mul+transformer_block/dropout_1/dropout/Mul:z:0,transformer_block/dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:�����������
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:�����������
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
3transformer_block/multi_head_self_attention/Shape_2Shape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ctransformer_block/multi_head_self_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_2StridedSlice<transformer_block/multi_head_self_attention/Shape_2:output:0Jtransformer_block/multi_head_self_attention/strided_slice_2/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_2/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0Vtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/ProdProdOtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1ProdQtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/concatConcatV2Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/stackPackKtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod:output:0Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense/Tensordot_1/transpose:y:0Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/MatMulMatMulNtransformer_block/multi_head_self_attention/dense/Tensordot_1/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense/Tensordot_1ReshapeNtransformer_block/multi_head_self_attention/dense/Tensordot_1/MatMul:product:0Otransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpReadVariableOpQtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense/BiasAdd_1BiasAddFtransformer_block/multi_head_self_attention/dense/Tensordot_1:output:0Rtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_1/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_1/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_1/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_2/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_2/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_2/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=transformer_block/multi_head_self_attention/Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_4/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_4/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_4/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_4ReshapeDtransformer_block/multi_head_self_attention/dense/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_4/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_4	Transpose>transformer_block/multi_head_self_attention/Reshape_4:output:0Etransformer_block/multi_head_self_attention/transpose_4/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_5/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_5/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_5ReshapeFtransformer_block/multi_head_self_attention/dense_1/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_5/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_5/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_5	Transpose>transformer_block/multi_head_self_attention/Reshape_5:output:0Etransformer_block/multi_head_self_attention/transpose_5/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_6/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_6/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_6ReshapeFtransformer_block/multi_head_self_attention/dense_2/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_6/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_6	Transpose>transformer_block/multi_head_self_attention/Reshape_6:output:0Etransformer_block/multi_head_self_attention/transpose_6/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
4transformer_block/multi_head_self_attention/MatMul_2BatchMatMulV2;transformer_block/multi_head_self_attention/transpose_4:y:0;transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
3transformer_block/multi_head_self_attention/Shape_3Shape;transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Ctransformer_block/multi_head_self_attention/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_3StridedSlice<transformer_block/multi_head_self_attention/Shape_3:output:0Jtransformer_block/multi_head_self_attention/strided_slice_3/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_3/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2transformer_block/multi_head_self_attention/Cast_1CastDtransformer_block/multi_head_self_attention/strided_slice_3:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2transformer_block/multi_head_self_attention/Sqrt_1Sqrt6transformer_block/multi_head_self_attention/Cast_1:y:0*
T0*
_output_shapes
: �
5transformer_block/multi_head_self_attention/truediv_1RealDiv=transformer_block/multi_head_self_attention/MatMul_2:output:06transformer_block/multi_head_self_attention/Sqrt_1:y:0*
T0*A
_output_shapes/
-:+����������������������������
5transformer_block/multi_head_self_attention/Softmax_1Softmax9transformer_block/multi_head_self_attention/truediv_1:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_3BatchMatMulV2?transformer_block/multi_head_self_attention/Softmax_1:softmax:0;transformer_block/multi_head_self_attention/transpose_6:y:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_7/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_7	Transpose=transformer_block/multi_head_self_attention/MatMul_3:output:0Etransformer_block/multi_head_self_attention/transpose_7/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
=transformer_block/multi_head_self_attention/Reshape_7/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
;transformer_block/multi_head_self_attention/Reshape_7/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_7/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_7/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_7Reshape;transformer_block/multi_head_self_attention/transpose_7:y:0Dtransformer_block/multi_head_self_attention/Reshape_7/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ShapeShape>transformer_block/multi_head_self_attention/Reshape_7:output:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_7:output:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_3/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_3/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_3/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������n
)transformer_block/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
'transformer_block/dropout/dropout_1/MulMulFtransformer_block/multi_head_self_attention/dense_3/BiasAdd_1:output:02transformer_block/dropout/dropout_1/Const:output:0*
T0*5
_output_shapes#
!:��������������������
)transformer_block/dropout/dropout_1/ShapeShapeFtransformer_block/multi_head_self_attention/dense_3/BiasAdd_1:output:0*
T0*
_output_shapes
:�
@transformer_block/dropout/dropout_1/random_uniform/RandomUniformRandomUniform2transformer_block/dropout/dropout_1/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0w
2transformer_block/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
0transformer_block/dropout/dropout_1/GreaterEqualGreaterEqualItransformer_block/dropout/dropout_1/random_uniform/RandomUniform:output:0;transformer_block/dropout/dropout_1/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:��������������������
(transformer_block/dropout/dropout_1/CastCast4transformer_block/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:��������������������
)transformer_block/dropout/dropout_1/Mul_1Mul+transformer_block/dropout/dropout_1/Mul:z:0,transformer_block/dropout/dropout_1/Cast:y:0*
T0*5
_output_shapes#
!:��������������������
transformer_block/add_2AddV2;transformer_block/layer_normalization_1/batchnorm/add_1:z:0-transformer_block/dropout/dropout_1/Mul_1:z:0*
T0*,
_output_shapes
:�����������
Ftransformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization/moments_1/meanMeantransformer_block/add_2:z:0Otransformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_block/layer_normalization/moments_1/StopGradientStopGradient=transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_2:z:0Etransformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization/moments_1/varianceMeanEtransformer_block/layer_normalization/moments_1/SquaredDifference:z:0Stransformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization/batchnorm_1/addAddV2Atransformer_block/layer_normalization/moments_1/variance:output:0@transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt9transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization/batchnorm_1/mulMul;transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Ltransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/mul_1Multransformer_block/add_2:z:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/mul_2Mul=transformer_block/layer_normalization/moments_1/mean:output:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization/batchnorm_1/subSubHtransformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0;transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/add_1AddV2;transformer_block/layer_normalization/batchnorm_1/mul_1:z:09transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:�����������
?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0
5transformer_block/sequential/dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
5transformer_block/sequential/dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
6transformer_block/sequential/dense_4/Tensordot_1/ShapeShape;transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:�
>transformer_block/sequential/dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot_1/GatherV2GatherV2?transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_4/Tensordot_1/free:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
@transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1GatherV2?transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Itransformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
6transformer_block/sequential/dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_4/Tensordot_1/ProdProdBtransformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0?transformer_block/sequential/dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
8transformer_block/sequential/dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
7transformer_block/sequential/dense_4/Tensordot_1/Prod_1ProdDtransformer_block/sequential/dense_4/Tensordot_1/GatherV2_1:output:0Atransformer_block/sequential/dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential/dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot_1/concatConcatV2>transformer_block/sequential/dense_4/Tensordot_1/free:output:0>transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Etransformer_block/sequential/dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
6transformer_block/sequential/dense_4/Tensordot_1/stackPack>transformer_block/sequential/dense_4/Tensordot_1/Prod:output:0@transformer_block/sequential/dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
:transformer_block/sequential/dense_4/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization/batchnorm_1/add_1:z:0@transformer_block/sequential/dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
8transformer_block/sequential/dense_4/Tensordot_1/ReshapeReshape>transformer_block/sequential/dense_4/Tensordot_1/transpose:y:0?transformer_block/sequential/dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
7transformer_block/sequential/dense_4/Tensordot_1/MatMulMatMulAtransformer_block/sequential/dense_4/Tensordot_1/Reshape:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8transformer_block/sequential/dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
>transformer_block/sequential/dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot_1/concat_1ConcatV2Btransformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0Atransformer_block/sequential/dense_4/Tensordot_1/Const_2:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
0transformer_block/sequential/dense_4/Tensordot_1ReshapeAtransformer_block/sequential/dense_4/Tensordot_1/MatMul:product:0Btransformer_block/sequential/dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������@�
=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
.transformer_block/sequential/dense_4/BiasAdd_1BiasAdd9transformer_block/sequential/dense_4/Tensordot_1:output:0Etransformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
+transformer_block/sequential/dense_4/Relu_1Relu7transformer_block/sequential/dense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������@�
?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0
5transformer_block/sequential/dense_5/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
5transformer_block/sequential/dense_5/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
6transformer_block/sequential/dense_5/Tensordot_1/ShapeShape9transformer_block/sequential/dense_4/Relu_1:activations:0*
T0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot_1/GatherV2GatherV2?transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_5/Tensordot_1/free:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
@transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1GatherV2?transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Itransformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
6transformer_block/sequential/dense_5/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot_1/ProdProdBtransformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
8transformer_block/sequential/dense_5/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
7transformer_block/sequential/dense_5/Tensordot_1/Prod_1ProdDtransformer_block/sequential/dense_5/Tensordot_1/GatherV2_1:output:0Atransformer_block/sequential/dense_5/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential/dense_5/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot_1/concatConcatV2>transformer_block/sequential/dense_5/Tensordot_1/free:output:0>transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Etransformer_block/sequential/dense_5/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
6transformer_block/sequential/dense_5/Tensordot_1/stackPack>transformer_block/sequential/dense_5/Tensordot_1/Prod:output:0@transformer_block/sequential/dense_5/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
:transformer_block/sequential/dense_5/Tensordot_1/transpose	Transpose9transformer_block/sequential/dense_4/Relu_1:activations:0@transformer_block/sequential/dense_5/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:���������@�
8transformer_block/sequential/dense_5/Tensordot_1/ReshapeReshape>transformer_block/sequential/dense_5/Tensordot_1/transpose:y:0?transformer_block/sequential/dense_5/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
7transformer_block/sequential/dense_5/Tensordot_1/MatMulMatMulAtransformer_block/sequential/dense_5/Tensordot_1/Reshape:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8transformer_block/sequential/dense_5/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
>transformer_block/sequential/dense_5/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot_1/concat_1ConcatV2Btransformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0Atransformer_block/sequential/dense_5/Tensordot_1/Const_2:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
0transformer_block/sequential/dense_5/Tensordot_1ReshapeAtransformer_block/sequential/dense_5/Tensordot_1/MatMul:product:0Btransformer_block/sequential/dense_5/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.transformer_block/sequential/dense_5/BiasAdd_1BiasAdd9transformer_block/sequential/dense_5/Tensordot_1:output:0Etransformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������p
+transformer_block/dropout_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
)transformer_block/dropout_1/dropout_1/MulMul7transformer_block/sequential/dense_5/BiasAdd_1:output:04transformer_block/dropout_1/dropout_1/Const:output:0*
T0*,
_output_shapes
:�����������
+transformer_block/dropout_1/dropout_1/ShapeShape7transformer_block/sequential/dense_5/BiasAdd_1:output:0*
T0*
_output_shapes
:�
Btransformer_block/dropout_1/dropout_1/random_uniform/RandomUniformRandomUniform4transformer_block/dropout_1/dropout_1/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0y
4transformer_block/dropout_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
2transformer_block/dropout_1/dropout_1/GreaterEqualGreaterEqualKtransformer_block/dropout_1/dropout_1/random_uniform/RandomUniform:output:0=transformer_block/dropout_1/dropout_1/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
*transformer_block/dropout_1/dropout_1/CastCast6transformer_block/dropout_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
+transformer_block/dropout_1/dropout_1/Mul_1Mul-transformer_block/dropout_1/dropout_1/Mul:z:0.transformer_block/dropout_1/dropout_1/Cast:y:0*
T0*,
_output_shapes
:�����������
transformer_block/add_3AddV2;transformer_block/layer_normalization/batchnorm_1/add_1:z:0/transformer_block/dropout_1/dropout_1/Mul_1:z:0*
T0*,
_output_shapes
:�����������
Htransformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization_1/moments_1/meanMeantransformer_block/add_3:z:0Qtransformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
>transformer_block/layer_normalization_1/moments_1/StopGradientStopGradient?transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Ctransformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_3:z:0Gtransformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:transformer_block/layer_normalization_1/moments_1/varianceMeanGtransformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0Utransformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(~
9transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
7transformer_block/layer_normalization_1/batchnorm_1/addAddV2Ctransformer_block/layer_normalization_1/moments_1/variance:output:0Btransformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
9transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrt;transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_block/layer_normalization_1/batchnorm_1/mulMul=transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Ntransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/mul_1Multransformer_block/add_3:z:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/mul_2Mul?transformer_block/layer_normalization_1/moments_1/mean:output:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_block/layer_normalization_1/batchnorm_1/subSubJtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0=transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2=transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0;transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:����������q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean=transformer_block/layer_normalization_1/batchnorm_1/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
dropout_2/dropout/MulMul&global_average_pooling1d/Mean:output:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:����������m
dropout_2/dropout/ShapeShape&global_average_pooling1d/Mean:output:0*
T0*
_output_shapes
:�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_6/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_6/SeluSeludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_7/MatMulMatMuldense_6/Selu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_7/SeluSeludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout_3/dropout/MulMuldense_7/Selu:activations:0 dropout_3/dropout/Const:output:0*
T0*'
_output_shapes
:���������a
dropout_3/dropout/ShapeShapedense_7/Selu:activations:0*
T0*
_output_shapes
:�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*'
_output_shapes
:����������
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_8/MatMulMatMuldropout_3/dropout/Mul_1:z:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization/batchnorm_1/ReadVariableOpE^transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpG^transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpI^transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpK^transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpM^transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp<^transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp>^transformer_block/sequential/dense_4/Tensordot/ReadVariableOp@^transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp<^transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp>^transformer_block/sequential/dense_5/Tensordot/ReadVariableOp@^transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2�
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpDtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpBtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2�
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpFtransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2�
Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpHtransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpJtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpJtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp2z
;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp2~
=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp2�
?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp2z
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp2~
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2�
?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_12681
x5
"embedding_1_embedding_lookup_12668:	�4
 embedding_embedding_lookup_12674:
��
identity��embedding/embedding_lookup�embedding_1/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:�
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_12668range:output:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/12668*
_output_shapes
:	�*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/12668*
_output_shapes
:	��
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	�Z
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_12674embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/12674*,
_output_shapes
:����������*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/12674*,
_output_shapes
:�����������
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:�����������
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:����������[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:���������

_user_specified_namex
�
�
'__inference_dense_6_layer_call_fn_13304

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_10505o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_13362

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_10533

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_10029

inputs
dense_4_9987:	�@
dense_4_9989:@ 
dense_5_10023:	@�
dense_5_10025:	�
identity��dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_9987dense_4_9989*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9986�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10023dense_5_10025*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10022|
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_transformer_block_layer_call_fn_12755

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_11474
input_1
unknown:	�
	unknown_0:
��
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_9948o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
'__inference_dense_5_layer_call_fn_13571

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10022t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_10677

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_dense_5_layer_call_and_return_conditional_losses_13601

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:����������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_13395

inputs
unknown:	�@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10029t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
'__inference_dense_7_layer_call_fn_13324

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_10522o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�=
!__inference__traced_restore_14120
file_prefix2
assignvariableop_dense_6_kernel:	�@-
assignvariableop_1_dense_6_bias:@3
!assignvariableop_2_dense_7_kernel:@-
assignvariableop_3_dense_7_bias:3
!assignvariableop_4_dense_8_kernel:-
assignvariableop_5_dense_8_bias:X
Dassignvariableop_6_token_and_position_embedding_embedding_embeddings:
��Y
Fassignvariableop_7_token_and_position_embedding_embedding_1_embeddings:	�_
Kassignvariableop_8_transformer_block_multi_head_self_attention_dense_kernel:
��X
Iassignvariableop_9_transformer_block_multi_head_self_attention_dense_bias:	�b
Nassignvariableop_10_transformer_block_multi_head_self_attention_dense_1_kernel:
��[
Lassignvariableop_11_transformer_block_multi_head_self_attention_dense_1_bias:	�b
Nassignvariableop_12_transformer_block_multi_head_self_attention_dense_2_kernel:
��[
Lassignvariableop_13_transformer_block_multi_head_self_attention_dense_2_bias:	�b
Nassignvariableop_14_transformer_block_multi_head_self_attention_dense_3_kernel:
��[
Lassignvariableop_15_transformer_block_multi_head_self_attention_dense_3_bias:	�5
"assignvariableop_16_dense_4_kernel:	�@.
 assignvariableop_17_dense_4_bias:@5
"assignvariableop_18_dense_5_kernel:	@�/
 assignvariableop_19_dense_5_bias:	�N
?assignvariableop_20_transformer_block_layer_normalization_gamma:	�M
>assignvariableop_21_transformer_block_layer_normalization_beta:	�P
Aassignvariableop_22_transformer_block_layer_normalization_1_gamma:	�O
@assignvariableop_23_transformer_block_layer_normalization_1_beta:	�'
assignvariableop_24_adam_iter:	 )
assignvariableop_25_adam_beta_1: )
assignvariableop_26_adam_beta_2: (
assignvariableop_27_adam_decay: 0
&assignvariableop_28_adam_learning_rate: %
assignvariableop_29_total_1: %
assignvariableop_30_count_1: #
assignvariableop_31_total: #
assignvariableop_32_count: <
)assignvariableop_33_adam_dense_6_kernel_m:	�@5
'assignvariableop_34_adam_dense_6_bias_m:@;
)assignvariableop_35_adam_dense_7_kernel_m:@5
'assignvariableop_36_adam_dense_7_bias_m:;
)assignvariableop_37_adam_dense_8_kernel_m:5
'assignvariableop_38_adam_dense_8_bias_m:`
Lassignvariableop_39_adam_token_and_position_embedding_embedding_embeddings_m:
��a
Nassignvariableop_40_adam_token_and_position_embedding_embedding_1_embeddings_m:	�g
Sassignvariableop_41_adam_transformer_block_multi_head_self_attention_dense_kernel_m:
��`
Qassignvariableop_42_adam_transformer_block_multi_head_self_attention_dense_bias_m:	�i
Uassignvariableop_43_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m:
��b
Sassignvariableop_44_adam_transformer_block_multi_head_self_attention_dense_1_bias_m:	�i
Uassignvariableop_45_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m:
��b
Sassignvariableop_46_adam_transformer_block_multi_head_self_attention_dense_2_bias_m:	�i
Uassignvariableop_47_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m:
��b
Sassignvariableop_48_adam_transformer_block_multi_head_self_attention_dense_3_bias_m:	�<
)assignvariableop_49_adam_dense_4_kernel_m:	�@5
'assignvariableop_50_adam_dense_4_bias_m:@<
)assignvariableop_51_adam_dense_5_kernel_m:	@�6
'assignvariableop_52_adam_dense_5_bias_m:	�U
Fassignvariableop_53_adam_transformer_block_layer_normalization_gamma_m:	�T
Eassignvariableop_54_adam_transformer_block_layer_normalization_beta_m:	�W
Hassignvariableop_55_adam_transformer_block_layer_normalization_1_gamma_m:	�V
Gassignvariableop_56_adam_transformer_block_layer_normalization_1_beta_m:	�<
)assignvariableop_57_adam_dense_6_kernel_v:	�@5
'assignvariableop_58_adam_dense_6_bias_v:@;
)assignvariableop_59_adam_dense_7_kernel_v:@5
'assignvariableop_60_adam_dense_7_bias_v:;
)assignvariableop_61_adam_dense_8_kernel_v:5
'assignvariableop_62_adam_dense_8_bias_v:`
Lassignvariableop_63_adam_token_and_position_embedding_embedding_embeddings_v:
��a
Nassignvariableop_64_adam_token_and_position_embedding_embedding_1_embeddings_v:	�g
Sassignvariableop_65_adam_transformer_block_multi_head_self_attention_dense_kernel_v:
��`
Qassignvariableop_66_adam_transformer_block_multi_head_self_attention_dense_bias_v:	�i
Uassignvariableop_67_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v:
��b
Sassignvariableop_68_adam_transformer_block_multi_head_self_attention_dense_1_bias_v:	�i
Uassignvariableop_69_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v:
��b
Sassignvariableop_70_adam_transformer_block_multi_head_self_attention_dense_2_bias_v:	�i
Uassignvariableop_71_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v:
��b
Sassignvariableop_72_adam_transformer_block_multi_head_self_attention_dense_3_bias_v:	�<
)assignvariableop_73_adam_dense_4_kernel_v:	�@5
'assignvariableop_74_adam_dense_4_bias_v:@<
)assignvariableop_75_adam_dense_5_kernel_v:	@�6
'assignvariableop_76_adam_dense_5_bias_v:	�U
Fassignvariableop_77_adam_transformer_block_layer_normalization_gamma_v:	�T
Eassignvariableop_78_adam_transformer_block_layer_normalization_beta_v:	�W
Hassignvariableop_79_adam_transformer_block_layer_normalization_1_gamma_v:	�V
Gassignvariableop_80_adam_transformer_block_layer_normalization_1_beta_v:	�
identity_82��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_9�'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�'
value�'B�'RB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*`
dtypesV
T2R	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpDassignvariableop_6_token_and_position_embedding_embedding_embeddingsIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpFassignvariableop_7_token_and_position_embedding_embedding_1_embeddingsIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpKassignvariableop_8_transformer_block_multi_head_self_attention_dense_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpIassignvariableop_9_transformer_block_multi_head_self_attention_dense_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpNassignvariableop_10_transformer_block_multi_head_self_attention_dense_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpLassignvariableop_11_transformer_block_multi_head_self_attention_dense_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpNassignvariableop_12_transformer_block_multi_head_self_attention_dense_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpLassignvariableop_13_transformer_block_multi_head_self_attention_dense_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpNassignvariableop_14_transformer_block_multi_head_self_attention_dense_3_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpLassignvariableop_15_transformer_block_multi_head_self_attention_dense_3_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_4_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_4_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_5_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_5_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp?assignvariableop_20_transformer_block_layer_normalization_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp>assignvariableop_21_transformer_block_layer_normalization_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpAassignvariableop_22_transformer_block_layer_normalization_1_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp@assignvariableop_23_transformer_block_layer_normalization_1_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_6_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_6_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_dense_7_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_dense_7_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_8_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_8_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpLassignvariableop_39_adam_token_and_position_embedding_embedding_embeddings_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpNassignvariableop_40_adam_token_and_position_embedding_embedding_1_embeddings_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpSassignvariableop_41_adam_transformer_block_multi_head_self_attention_dense_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpQassignvariableop_42_adam_transformer_block_multi_head_self_attention_dense_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpUassignvariableop_43_adam_transformer_block_multi_head_self_attention_dense_1_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpSassignvariableop_44_adam_transformer_block_multi_head_self_attention_dense_1_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpUassignvariableop_45_adam_transformer_block_multi_head_self_attention_dense_2_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpSassignvariableop_46_adam_transformer_block_multi_head_self_attention_dense_2_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpUassignvariableop_47_adam_transformer_block_multi_head_self_attention_dense_3_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpSassignvariableop_48_adam_transformer_block_multi_head_self_attention_dense_3_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_4_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp'assignvariableop_50_adam_dense_4_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_5_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp'assignvariableop_52_adam_dense_5_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpFassignvariableop_53_adam_transformer_block_layer_normalization_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpEassignvariableop_54_adam_transformer_block_layer_normalization_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpHassignvariableop_55_adam_transformer_block_layer_normalization_1_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpGassignvariableop_56_adam_transformer_block_layer_normalization_1_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_6_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_6_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_7_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_7_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_8_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_8_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpLassignvariableop_63_adam_token_and_position_embedding_embedding_embeddings_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpNassignvariableop_64_adam_token_and_position_embedding_embedding_1_embeddings_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpSassignvariableop_65_adam_transformer_block_multi_head_self_attention_dense_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpQassignvariableop_66_adam_transformer_block_multi_head_self_attention_dense_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpUassignvariableop_67_adam_transformer_block_multi_head_self_attention_dense_1_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpSassignvariableop_68_adam_transformer_block_multi_head_self_attention_dense_1_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpUassignvariableop_69_adam_transformer_block_multi_head_self_attention_dense_2_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpSassignvariableop_70_adam_transformer_block_multi_head_self_attention_dense_2_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpUassignvariableop_71_adam_transformer_block_multi_head_self_attention_dense_3_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpSassignvariableop_72_adam_transformer_block_multi_head_self_attention_dense_3_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_dense_4_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_dense_4_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_dense_5_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp'assignvariableop_76_adam_dense_5_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpFassignvariableop_77_adam_transformer_block_layer_normalization_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpEassignvariableop_78_adam_transformer_block_layer_normalization_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpHassignvariableop_79_adam_transformer_block_layer_normalization_1_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpGassignvariableop_80_adam_transformer_block_layer_normalization_1_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_81Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_82IdentityIdentity_81:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_82Identity_82:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_10089

inputs 
dense_4_10078:	�@
dense_4_10080:@ 
dense_5_10083:	@�
dense_5_10085:	�
identity��dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCallinputsdense_4_10078dense_4_10080*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9986�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10083dense_5_10085*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10022|
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
1__inference_transformer_block_layer_call_fn_12718

inputs
unknown:
��
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�
	unknown_9:	�@

unknown_10:@

unknown_11:	@�

unknown_12:	�

unknown_13:	�

unknown_14:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185
x5
"embedding_1_embedding_lookup_10172:	�4
 embedding_embedding_lookup_10178:
��
identity��embedding/embedding_lookup�embedding_1/embedding_lookup6
ShapeShapex*
T0*
_output_shapes
:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:�
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_10172range:output:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/10172*
_output_shapes
:	�*
dtype0�
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/10172*
_output_shapes
:	��
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	�Z
embedding/CastCastx*

DstT0*

SrcT0*'
_output_shapes
:����������
embedding/embedding_lookupResourceGather embedding_embedding_lookup_10178embedding/Cast:y:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/10178*,
_output_shapes
:����������*
dtype0�
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/10178*,
_output_shapes
:�����������
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:�����������
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:����������[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^embedding/embedding_lookup^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:J F
'
_output_shapes
:���������

_user_specified_namex
�9
�

@__inference_model_layer_call_and_return_conditional_losses_11413
input_15
"token_and_position_embedding_11339:	�6
"token_and_position_embedding_11341:
��+
transformer_block_11344:
��&
transformer_block_11346:	�+
transformer_block_11348:
��&
transformer_block_11350:	�+
transformer_block_11352:
��&
transformer_block_11354:	�+
transformer_block_11356:
��&
transformer_block_11358:	�&
transformer_block_11360:	�&
transformer_block_11362:	�*
transformer_block_11364:	�@%
transformer_block_11366:@*
transformer_block_11368:	@�&
transformer_block_11370:	�&
transformer_block_11372:	�&
transformer_block_11374:	� 
dense_6_11396:	�@
dense_6_11398:@
dense_7_11401:@
dense_7_11403:
dense_8_11407:
dense_8_11409:
identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�4token_and_position_embedding/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�+transformer_block/StatefulPartitionedCall_1�
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_11339"token_and_position_embedding_11341*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_11344transformer_block_11346transformer_block_11348transformer_block_11350transformer_block_11352transformer_block_11354transformer_block_11356transformer_block_11358transformer_block_11360transformer_block_11362transformer_block_11364transformer_block_11366transformer_block_11368transformer_block_11370transformer_block_11372transformer_block_11374*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978�
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_11344transformer_block_11346transformer_block_11348transformer_block_11350transformer_block_11352transformer_block_11354transformer_block_11356transformer_block_11358transformer_block_11360transformer_block_11362transformer_block_11364transformer_block_11366transformer_block_11368transformer_block_11370transformer_block_11372transformer_block_11374*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10677�
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_6_11396dense_6_11398*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_10505�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_11401dense_7_11403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_10522�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10634�
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_8_11407dense_8_11409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_10546w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
E
)__inference_dropout_2_layer_call_fn_13273

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10492a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_6_layer_call_and_return_conditional_losses_13315

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_2_layer_call_and_return_conditional_losses_13295

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�9
�

@__inference_model_layer_call_and_return_conditional_losses_11155

inputs5
"token_and_position_embedding_11081:	�6
"token_and_position_embedding_11083:
��+
transformer_block_11086:
��&
transformer_block_11088:	�+
transformer_block_11090:
��&
transformer_block_11092:	�+
transformer_block_11094:
��&
transformer_block_11096:	�+
transformer_block_11098:
��&
transformer_block_11100:	�&
transformer_block_11102:	�&
transformer_block_11104:	�*
transformer_block_11106:	�@%
transformer_block_11108:@*
transformer_block_11110:	@�&
transformer_block_11112:	�&
transformer_block_11114:	�&
transformer_block_11116:	� 
dense_6_11138:	�@
dense_6_11140:@
dense_7_11143:@
dense_7_11145:
dense_8_11149:
dense_8_11151:
identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�!dropout_2/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�4token_and_position_embedding/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�+transformer_block/StatefulPartitionedCall_1�
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs"token_and_position_embedding_11081"token_and_position_embedding_11083*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_11086transformer_block_11088transformer_block_11090transformer_block_11092transformer_block_11094transformer_block_11096transformer_block_11098transformer_block_11100transformer_block_11102transformer_block_11104transformer_block_11106transformer_block_11108transformer_block_11110transformer_block_11112transformer_block_11114transformer_block_11116*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978�
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_11086transformer_block_11088transformer_block_11090transformer_block_11092transformer_block_11094transformer_block_11096transformer_block_11098transformer_block_11100transformer_block_11102transformer_block_11104transformer_block_11106transformer_block_11108transformer_block_11110transformer_block_11112transformer_block_11114transformer_block_11116*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151�
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10677�
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_6_11138dense_6_11140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_10505�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_11143dense_7_11145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_10522�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall(dense_7/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10634�
dense_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0dense_8_11149dense_8_11151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_10546w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_10040
dense_4_input
unknown:	�@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10029t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_namedense_4_input
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_10492

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�>
�
E__inference_sequential_layer_call_and_return_conditional_losses_13522

inputs<
)dense_4_tensordot_readvariableop_resource:	�@5
'dense_4_biasadd_readvariableop_resource:@<
)dense_5_tensordot_readvariableop_resource:	@�6
'dense_5_biasadd_readvariableop_resource:	�
identity��dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@d
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_13257

inputsU
Amulti_head_self_attention_dense_tensordot_readvariableop_resource:
��N
?multi_head_self_attention_dense_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�G
4sequential_dense_4_tensordot_readvariableop_resource:	�@@
2sequential_dense_4_biasadd_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�6multi_head_self_attention/dense/BiasAdd/ReadVariableOp�8multi_head_self_attention/dense/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�)sequential/dense_4/BiasAdd/ReadVariableOp�+sequential/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0x
.multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_self_attention/dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/GatherV2GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/free:output:0@multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/axes:output:0Bmulti_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.multi_head_self_attention/dense/Tensordot/ProdProd;multi_head_self_attention/dense/Tensordot/GatherV2:output:08multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense/Tensordot/Prod_1Prod=multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0:multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0multi_head_self_attention/dense/Tensordot/concatConcatV27multi_head_self_attention/dense/Tensordot/free:output:07multi_head_self_attention/dense/Tensordot/axes:output:0>multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/multi_head_self_attention/dense/Tensordot/stackPack7multi_head_self_attention/dense/Tensordot/Prod:output:09multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3multi_head_self_attention/dense/Tensordot/transpose	Transposeinputs9multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1multi_head_self_attention/dense/Tensordot/ReshapeReshape7multi_head_self_attention/dense/Tensordot/transpose:y:08multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0multi_head_self_attention/dense/Tensordot/MatMulMatMul:multi_head_self_attention/dense/Tensordot/Reshape:output:0@multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������|
1multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�y
7multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/concat_1ConcatV2;multi_head_self_attention/dense/Tensordot/GatherV2:output:0:multi_head_self_attention/dense/Tensordot/Const_2:output:0@multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)multi_head_self_attention/dense/TensordotReshape:multi_head_self_attention/dense/Tensordot/MatMul:product:0;multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
6multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOp?multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'multi_head_self_attention/dense/BiasAddBiasAdd2multi_head_self_attention/dense/Tensordot:output:0>multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape0multi_head_self_attention/dense/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_1/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(z
!multi_head_self_attention/Shape_1Shape)multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)multi_head_self_attention/strided_slice_1StridedSlice*multi_head_self_attention/Shape_1:output:08multi_head_self_attention/strided_slice_1/stack:output:0:multi_head_self_attention/strided_slice_1/stack_1:output:0:multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
multi_head_self_attention/CastCast2multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������n
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_3/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
dropout/dropout/MulMul2multi_head_self_attention/dense_3/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:�������������������w
dropout/dropout/ShapeShape2multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:��������������������
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:��������������������
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*5
_output_shapes#
!:�������������������f
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
+sequential/dense_4/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_4/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/GatherV2GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/free:output:03sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_4/Tensordot/GatherV2_1GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/axes:output:05sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_4/Tensordot/ProdProd.sequential/dense_4/Tensordot/GatherV2:output:0+sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_4/Tensordot/Prod_1Prod0sequential/dense_4/Tensordot/GatherV2_1:output:0-sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_4/Tensordot/concatConcatV2*sequential/dense_4/Tensordot/free:output:0*sequential/dense_4/Tensordot/axes:output:01sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_4/Tensordot/stackPack*sequential/dense_4/Tensordot/Prod:output:0,sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_4/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
$sequential/dense_4/Tensordot/ReshapeReshape*sequential/dense_4/Tensordot/transpose:y:0+sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_4/Tensordot/MatMulMatMul-sequential/dense_4/Tensordot/Reshape:output:03sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/concat_1ConcatV2.sequential/dense_4/Tensordot/GatherV2:output:0-sequential/dense_4/Tensordot/Const_2:output:03sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_4/TensordotReshape-sequential/dense_4/Tensordot/MatMul:product:0.sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_4/BiasAddBiasAdd%sequential/dense_4/Tensordot:output:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@z
sequential/dense_4/ReluRelu#sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_5/Tensordot/ShapeShape%sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose%sequential/dense_4/Relu:activations:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
dropout_1/dropout/MulMul#sequential/dense_5/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������j
dropout_1/dropout/ShapeShape#sequential/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:�����������
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp7^multi_head_self_attention/dense/BiasAdd/ReadVariableOp9^multi_head_self_attention/dense/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp,^sequential/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2p
6multi_head_self_attention/dense/BiasAdd/ReadVariableOp6multi_head_self_attention/dense/BiasAdd/ReadVariableOp2t
8multi_head_self_attention/dense/Tensordot/ReadVariableOp8multi_head_self_attention/dense/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2Z
+sequential/dense_4/Tensordot/ReadVariableOp+sequential/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_dense_8_layer_call_and_return_conditional_losses_10546

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_13283

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
B__inference_dense_5_layer_call_and_return_conditional_losses_10022

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:����������z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������@
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13268

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
ԫ
�-
__inference__traced_save_13867
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableopP
Lsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_kernel_read_readvariableopU
Qsavev2_transformer_block_multi_head_self_attention_dense_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_1_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_1_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_2_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_2_bias_read_readvariableopY
Usavev2_transformer_block_multi_head_self_attention_dense_3_kernel_read_readvariableopW
Ssavev2_transformer_block_multi_head_self_attention_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableopJ
Fsavev2_transformer_block_layer_normalization_gamma_read_readvariableopI
Esavev2_transformer_block_layer_normalization_beta_read_readvariableopL
Hsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopK
Gsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_kernel_m_read_readvariableop\
Xsavev2_adam_transformer_block_multi_head_self_attention_dense_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_m_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableopW
Ssavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopY
Usavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_kernel_v_read_readvariableop\
Xsavev2_adam_transformer_block_multi_head_self_attention_dense_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_v_read_readvariableop`
\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v_read_readvariableop^
Zsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopQ
Msavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopP
Lsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopS
Osavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopR
Nsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�'
value�'B�'RB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:R*
dtype0*�
value�B�RB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �+
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableopLsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopNsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_kernel_read_readvariableopQsavev2_transformer_block_multi_head_self_attention_dense_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_1_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_1_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_2_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_2_bias_read_readvariableopUsavev2_transformer_block_multi_head_self_attention_dense_3_kernel_read_readvariableopSsavev2_transformer_block_multi_head_self_attention_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableopFsavev2_transformer_block_layer_normalization_gamma_read_readvariableopEsavev2_transformer_block_layer_normalization_beta_read_readvariableopHsavev2_transformer_block_layer_normalization_1_gamma_read_readvariableopGsavev2_transformer_block_layer_normalization_1_beta_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_m_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_kernel_m_read_readvariableopXsavev2_adam_transformer_block_multi_head_self_attention_dense_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_m_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_m_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_m_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_m_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_m_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableopSsavev2_adam_token_and_position_embedding_embedding_embeddings_v_read_readvariableopUsavev2_adam_token_and_position_embedding_embedding_1_embeddings_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_kernel_v_read_readvariableopXsavev2_adam_transformer_block_multi_head_self_attention_dense_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_1_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_1_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_2_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_2_bias_v_read_readvariableop\savev2_adam_transformer_block_multi_head_self_attention_dense_3_kernel_v_read_readvariableopZsavev2_adam_transformer_block_multi_head_self_attention_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopMsavev2_adam_transformer_block_layer_normalization_gamma_v_read_readvariableopLsavev2_adam_transformer_block_layer_normalization_beta_v_read_readvariableopOsavev2_adam_transformer_block_layer_normalization_1_gamma_v_read_readvariableopNsavev2_adam_transformer_block_layer_normalization_1_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *`
dtypesV
T2R	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�@:@:@::::
��:	�:
��:�:
��:�:
��:�:
��:�:	�@:@:	@�:�:�:�:�:�: : : : : : : : : :	�@:@:@::::
��:	�:
��:�:
��:�:
��:�:
��:�:	�@:@:	@�:�:�:�:�:�:	�@:@:@::::
��:	�:
��:�:
��:�:
��:�:
��:�:	�@:@:	@�:�:�:�:�:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::&"
 
_output_shapes
:
��:%!

_output_shapes
:	�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�@: 

_output_shapes
:@:%!

_output_shapes
:	@�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:

_output_shapes
: :
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
: :%"!

_output_shapes
:	�@: #

_output_shapes
:@:$$ 

_output_shapes

:@: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::&("
 
_output_shapes
:
��:%)!

_output_shapes
:	�:&*"
 
_output_shapes
:
��:!+

_output_shapes	
:�:&,"
 
_output_shapes
:
��:!-

_output_shapes	
:�:&."
 
_output_shapes
:
��:!/

_output_shapes	
:�:&0"
 
_output_shapes
:
��:!1

_output_shapes	
:�:%2!

_output_shapes
:	�@: 3

_output_shapes
:@:%4!

_output_shapes
:	@�:!5

_output_shapes	
:�:!6

_output_shapes	
:�:!7

_output_shapes	
:�:!8

_output_shapes	
:�:!9

_output_shapes	
:�:%:!

_output_shapes
:	�@: ;

_output_shapes
:@:$< 

_output_shapes

:@: =

_output_shapes
::$> 

_output_shapes

:: ?

_output_shapes
::&@"
 
_output_shapes
:
��:%A!

_output_shapes
:	�:&B"
 
_output_shapes
:
��:!C

_output_shapes	
:�:&D"
 
_output_shapes
:
��:!E

_output_shapes	
:�:&F"
 
_output_shapes
:
��:!G

_output_shapes	
:�:&H"
 
_output_shapes
:
��:!I

_output_shapes	
:�:%J!

_output_shapes
:	�@: K

_output_shapes
:@:%L!

_output_shapes
:	@�:!M

_output_shapes	
:�:!N

_output_shapes	
:�:!O

_output_shapes	
:�:!P

_output_shapes	
:�:!Q

_output_shapes	
:�:R

_output_shapes
: 
�
�
%__inference_model_layer_call_fn_10604
input_1
unknown:	�
	unknown_0:
��
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_10553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
B__inference_dense_7_layer_call_and_return_conditional_losses_10522

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
SeluSeluBiasAdd:output:0*
T0*'
_output_shapes
:���������a
IdentityIdentitySelu:activations:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
A__inference_dense_4_layer_call_and_return_conditional_losses_9986

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�	
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_10634

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�

�
B__inference_dense_8_layer_call_and_return_conditional_losses_13382

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_13350

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:���������[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
'__inference_dense_4_layer_call_fn_13531

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9986s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�%
@__inference_model_layer_call_and_return_conditional_losses_12093

inputsR
?token_and_position_embedding_embedding_1_embedding_lookup_11591:	�Q
=token_and_position_embedding_embedding_embedding_lookup_11597:
��g
Stransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource:
��`
Qtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource:	�i
Utransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource:
��b
Stransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource:	�Z
Ktransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource:	�V
Gtransformer_block_layer_normalization_batchnorm_readvariableop_resource:	�Y
Ftransformer_block_sequential_dense_4_tensordot_readvariableop_resource:	�@R
Dtransformer_block_sequential_dense_4_biasadd_readvariableop_resource:@Y
Ftransformer_block_sequential_dense_5_tensordot_readvariableop_resource:	@�S
Dtransformer_block_sequential_dense_5_biasadd_readvariableop_resource:	�\
Mtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�X
Itransformer_block_layer_normalization_1_batchnorm_readvariableop_resource:	�9
&dense_6_matmul_readvariableop_resource:	�@5
'dense_6_biasadd_readvariableop_resource:@8
&dense_7_matmul_readvariableop_resource:@5
'dense_7_biasadd_readvariableop_resource:8
&dense_8_matmul_readvariableop_resource:5
'dense_8_biasadd_readvariableop_resource:
identity��dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�dense_8/BiasAdd/ReadVariableOp�dense_8/MatMul/ReadVariableOp�7token_and_position_embedding/embedding/embedding_lookup�9token_and_position_embedding/embedding_1/embedding_lookup�>transformer_block/layer_normalization/batchnorm/ReadVariableOp�Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp�@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp�Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp�@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp�Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp�Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp�Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp�Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp�Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp�Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp�;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp�=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp�?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp�;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp�=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp�=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp�?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpX
"token_and_position_embedding/ShapeShapeinputs*
T0*
_output_shapes
:�
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: |
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : j
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*
_output_shapes
:�
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather?token_and_position_embedding_embedding_1_embedding_lookup_11591+token_and_position_embedding/range:output:0*
Tindices0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/11591*
_output_shapes
:	�*
dtype0�
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0*
T0*R
_classH
FDloc:@token_and_position_embedding/embedding_1/embedding_lookup/11591*
_output_shapes
:	��
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	�|
+token_and_position_embedding/embedding/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:����������
7token_and_position_embedding/embedding/embedding_lookupResourceGather=token_and_position_embedding_embedding_embedding_lookup_11597/token_and_position_embedding/embedding/Cast:y:0*
Tindices0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/11597*,
_output_shapes
:����������*
dtype0�
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0*
T0*P
_classF
DBloc:@token_and_position_embedding/embedding/embedding_lookup/11597*,
_output_shapes
:�����������
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:�����������
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
1transformer_block/multi_head_self_attention/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Atransformer_block/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Atransformer_block/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
9transformer_block/multi_head_self_attention/strided_sliceStridedSlice:transformer_block/multi_head_self_attention/Shape:output:0Htransformer_block/multi_head_self_attention/strided_slice/stack:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
@transformer_block/multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
@transformer_block/multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Atransformer_block/multi_head_self_attention/dense/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2GatherV2Jtransformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV2Jtransformer_block/multi_head_self_attention/dense/Tensordot/Shape:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
@transformer_block/multi_head_self_attention/dense/Tensordot/ProdProdMtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Jtransformer_block/multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Ctransformer_block/multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense/Tensordot/Prod_1ProdOtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Btransformer_block/multi_head_self_attention/dense/Tensordot/concatConcatV2Itransformer_block/multi_head_self_attention/dense/Tensordot/free:output:0Itransformer_block/multi_head_self_attention/dense/Tensordot/axes:output:0Ptransformer_block/multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/dense/Tensordot/stackPackItransformer_block/multi_head_self_attention/dense/Tensordot/Prod:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Ktransformer_block/multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Ctransformer_block/multi_head_self_attention/dense/Tensordot/ReshapeReshapeItransformer_block/multi_head_self_attention/dense/Tensordot/transpose:y:0Jtransformer_block/multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Btransformer_block/multi_head_self_attention/dense/Tensordot/MatMulMatMulLtransformer_block/multi_head_self_attention/dense/Tensordot/Reshape:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ctransformer_block/multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Itransformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1ConcatV2Mtransformer_block/multi_head_self_attention/dense/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot/Const_2:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
;transformer_block/multi_head_self_attention/dense/TensordotReshapeLtransformer_block/multi_head_self_attention/dense/Tensordot/MatMul:product:0Mtransformer_block/multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOpQtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer_block/multi_head_self_attention/dense/BiasAddBiasAddDtransformer_block/multi_head_self_attention/dense/Tensordot:output:0Ptransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_1/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_1/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_1/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_1/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_1/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_1/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_1/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ShapeShape$token_and_position_embedding/add:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_2/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_2/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose	Transpose$token_and_position_embedding/add:z:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_2/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_2/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_2/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_2/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_2/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;transformer_block/multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������}
;transformer_block/multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;transformer_block/multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/multi_head_self_attention/Reshape/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/1:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/2:output:0Dtransformer_block/multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
3transformer_block/multi_head_self_attention/ReshapeReshapeBtransformer_block/multi_head_self_attention/dense/BiasAdd:output:0Btransformer_block/multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
:transformer_block/multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
5transformer_block/multi_head_self_attention/transpose	Transpose<transformer_block/multi_head_self_attention/Reshape:output:0Ctransformer_block/multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_1/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_1ReshapeDtransformer_block/multi_head_self_attention/dense_1/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_1	Transpose>transformer_block/multi_head_self_attention/Reshape_1:output:0Etransformer_block/multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_2/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_2ReshapeDtransformer_block/multi_head_self_attention/dense_2/BiasAdd:output:0Dtransformer_block/multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_2	Transpose>transformer_block/multi_head_self_attention/Reshape_2:output:0Etransformer_block/multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
2transformer_block/multi_head_self_attention/MatMulBatchMatMulV29transformer_block/multi_head_self_attention/transpose:y:0;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
3transformer_block/multi_head_self_attention/Shape_1Shape;transformer_block/multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Ctransformer_block/multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_1StridedSlice<transformer_block/multi_head_self_attention/Shape_1:output:0Jtransformer_block/multi_head_self_attention/strided_slice_1/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_1/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
0transformer_block/multi_head_self_attention/CastCastDtransformer_block/multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
0transformer_block/multi_head_self_attention/SqrtSqrt4transformer_block/multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
3transformer_block/multi_head_self_attention/truedivRealDiv;transformer_block/multi_head_self_attention/MatMul:output:04transformer_block/multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
3transformer_block/multi_head_self_attention/SoftmaxSoftmax7transformer_block/multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_1BatchMatMulV2=transformer_block/multi_head_self_attention/Softmax:softmax:0;transformer_block/multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_3	Transpose=transformer_block/multi_head_self_attention/MatMul_1:output:0Etransformer_block/multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
=transformer_block/multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
;transformer_block/multi_head_self_attention/Reshape_3/shapePackBtransformer_block/multi_head_self_attention/strided_slice:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_3Reshape;transformer_block/multi_head_self_attention/transpose_3:y:0Dtransformer_block/multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ShapeShape>transformer_block/multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Shape:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense_3/Tensordot/ProdProdOtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1ProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/concatConcatV2Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/free:output:0Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/axes:output:0Rtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense_3/Tensordot/stackPackKtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_3:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense_3/Tensordot/transpose:y:0Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMulMatMulNtransformer_block/multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense_3/TensordotReshapeNtransformer_block/multi_head_self_attention/dense_3/Tensordot/MatMul:product:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense_3/BiasAddBiasAddFtransformer_block/multi_head_self_attention/dense_3/Tensordot:output:0Rtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
"transformer_block/dropout/IdentityIdentityDtransformer_block/multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:��������������������
transformer_block/addAddV2$token_and_position_embedding/add:z:0+transformer_block/dropout/Identity:output:0*
T0*,
_output_shapes
:�����������
Dtransformer_block/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
2transformer_block/layer_normalization/moments/meanMeantransformer_block/add:z:0Mtransformer_block/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
:transformer_block/layer_normalization/moments/StopGradientStopGradient;transformer_block/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
?transformer_block/layer_normalization/moments/SquaredDifferenceSquaredDifferencetransformer_block/add:z:0Ctransformer_block/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Htransformer_block/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization/moments/varianceMeanCtransformer_block/layer_normalization/moments/SquaredDifference:z:0Qtransformer_block/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(z
5transformer_block/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
3transformer_block/layer_normalization/batchnorm/addAddV2?transformer_block/layer_normalization/moments/variance:output:0>transformer_block/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
5transformer_block/layer_normalization/batchnorm/RsqrtRsqrt7transformer_block/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3transformer_block/layer_normalization/batchnorm/mulMul9transformer_block/layer_normalization/batchnorm/Rsqrt:y:0Jtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/mul_1Multransformer_block/add:z:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/mul_2Mul;transformer_block/layer_normalization/moments/mean:output:07transformer_block/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
>transformer_block/layer_normalization/batchnorm/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3transformer_block/layer_normalization/batchnorm/subSubFtransformer_block/layer_normalization/batchnorm/ReadVariableOp:value:09transformer_block/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
5transformer_block/layer_normalization/batchnorm/add_1AddV29transformer_block/layer_normalization/batchnorm/mul_1:z:07transformer_block/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
=transformer_block/sequential/dense_4/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0}
3transformer_block/sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_4/Tensordot/ShapeShape9transformer_block/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_4/Tensordot/Shape:output:0<transformer_block/sequential/dense_4/Tensordot/free:output:0Etransformer_block/sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_4/Tensordot/Shape:output:0<transformer_block/sequential/dense_4/Tensordot/axes:output:0Gtransformer_block/sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_4/Tensordot/ProdProd@transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_4/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_4/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_4/Tensordot/concatConcatV2<transformer_block/sequential/dense_4/Tensordot/free:output:0<transformer_block/sequential/dense_4/Tensordot/axes:output:0Ctransformer_block/sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_4/Tensordot/stackPack<transformer_block/sequential/dense_4/Tensordot/Prod:output:0>transformer_block/sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_4/Tensordot/transpose	Transpose9transformer_block/layer_normalization/batchnorm/add_1:z:0>transformer_block/sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
6transformer_block/sequential/dense_4/Tensordot/ReshapeReshape<transformer_block/sequential/dense_4/Tensordot/transpose:y:0=transformer_block/sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_4/Tensordot/MatMulMatMul?transformer_block/sequential/dense_4/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
6transformer_block/sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@~
<transformer_block/sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_4/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_4/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_4/TensordotReshape?transformer_block/sequential/dense_4/Tensordot/MatMul:product:0@transformer_block/sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,transformer_block/sequential/dense_4/BiasAddBiasAdd7transformer_block/sequential/dense_4/Tensordot:output:0Ctransformer_block/sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
)transformer_block/sequential/dense_4/ReluRelu5transformer_block/sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0}
3transformer_block/sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
3transformer_block/sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
4transformer_block/sequential/dense_5/Tensordot/ShapeShape7transformer_block/sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:~
<transformer_block/sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/GatherV2GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/free:output:0Etransformer_block/sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot/GatherV2_1GatherV2=transformer_block/sequential/dense_5/Tensordot/Shape:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Gtransformer_block/sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:~
4transformer_block/sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
3transformer_block/sequential/dense_5/Tensordot/ProdProd@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0=transformer_block/sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: �
6transformer_block/sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot/Prod_1ProdBtransformer_block/sequential/dense_5/Tensordot/GatherV2_1:output:0?transformer_block/sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: |
:transformer_block/sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
5transformer_block/sequential/dense_5/Tensordot/concatConcatV2<transformer_block/sequential/dense_5/Tensordot/free:output:0<transformer_block/sequential/dense_5/Tensordot/axes:output:0Ctransformer_block/sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
4transformer_block/sequential/dense_5/Tensordot/stackPack<transformer_block/sequential/dense_5/Tensordot/Prod:output:0>transformer_block/sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
8transformer_block/sequential/dense_5/Tensordot/transpose	Transpose7transformer_block/sequential/dense_4/Relu:activations:0>transformer_block/sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
6transformer_block/sequential/dense_5/Tensordot/ReshapeReshape<transformer_block/sequential/dense_5/Tensordot/transpose:y:0=transformer_block/sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
5transformer_block/sequential/dense_5/Tensordot/MatMulMatMul?transformer_block/sequential/dense_5/Tensordot/Reshape:output:0Etransformer_block/sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6transformer_block/sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�~
<transformer_block/sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot/concat_1ConcatV2@transformer_block/sequential/dense_5/Tensordot/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot/Const_2:output:0Etransformer_block/sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
.transformer_block/sequential/dense_5/TensordotReshape?transformer_block/sequential/dense_5/Tensordot/MatMul:product:0@transformer_block/sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_block/sequential/dense_5/BiasAddBiasAdd7transformer_block/sequential/dense_5/Tensordot:output:0Ctransformer_block/sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
$transformer_block/dropout_1/IdentityIdentity5transformer_block/sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
transformer_block/add_1AddV29transformer_block/layer_normalization/batchnorm/add_1:z:0-transformer_block/dropout_1/Identity:output:0*
T0*,
_output_shapes
:�����������
Ftransformer_block/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization_1/moments/meanMeantransformer_block/add_1:z:0Otransformer_block/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_block/layer_normalization_1/moments/StopGradientStopGradient=transformer_block/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_block/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencetransformer_block/add_1:z:0Etransformer_block/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization_1/moments/varianceMeanEtransformer_block/layer_normalization_1/moments/SquaredDifference:z:0Stransformer_block/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_block/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization_1/batchnorm/addAddV2Atransformer_block/layer_normalization_1/moments/variance:output:0@transformer_block/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_block/layer_normalization_1/batchnorm/RsqrtRsqrt9transformer_block/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/mulMul;transformer_block/layer_normalization_1/batchnorm/Rsqrt:y:0Ltransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/mul_1Multransformer_block/add_1:z:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/mul_2Mul=transformer_block/layer_normalization_1/moments/mean:output:09transformer_block/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization_1/batchnorm/subSubHtransformer_block/layer_normalization_1/batchnorm/ReadVariableOp:value:0;transformer_block/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization_1/batchnorm/add_1AddV2;transformer_block/layer_normalization_1/batchnorm/mul_1:z:09transformer_block/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
3transformer_block/multi_head_self_attention/Shape_2Shape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ctransformer_block/multi_head_self_attention/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_2StridedSlice<transformer_block/multi_head_self_attention/Shape_2:output:0Jtransformer_block/multi_head_self_attention/strided_slice_2/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_2/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2GatherV2Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1GatherV2Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Shape:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0Vtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_block/multi_head_self_attention/dense/Tensordot_1/ProdProdOtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1ProdQtransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2_1:output:0Ntransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Itransformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/concatConcatV2Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/free:output:0Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/axes:output:0Rtransformer_block/multi_head_self_attention/dense/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_block/multi_head_self_attention/dense/Tensordot_1/stackPackKtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod:output:0Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Gtransformer_block/multi_head_self_attention/dense/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Mtransformer_block/multi_head_self_attention/dense/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/ReshapeReshapeKtransformer_block/multi_head_self_attention/dense/Tensordot_1/transpose:y:0Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Dtransformer_block/multi_head_self_attention/dense/Tensordot_1/MatMulMatMulNtransformer_block/multi_head_self_attention/dense/Tensordot_1/Reshape:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Etransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Ktransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1ConcatV2Otransformer_block/multi_head_self_attention/dense/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense/Tensordot_1/Const_2:output:0Ttransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
=transformer_block/multi_head_self_attention/dense/Tensordot_1ReshapeNtransformer_block/multi_head_self_attention/dense/Tensordot_1/MatMul:product:0Otransformer_block/multi_head_self_attention/dense/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpReadVariableOpQtransformer_block_multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;transformer_block/multi_head_self_attention/dense/BiasAdd_1BiasAddFtransformer_block/multi_head_self_attention/dense/Tensordot_1:output:0Rtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_1/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Otransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_1/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_1/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_1/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_1/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ShapeShape;transformer_block/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_2/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization_1/batchnorm/add_1:z:0Otransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_2/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_2/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_2/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_2/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=transformer_block/multi_head_self_attention/Reshape_4/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_4/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_4/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_4/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_4/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_4ReshapeDtransformer_block/multi_head_self_attention/dense/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_4/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_4	Transpose>transformer_block/multi_head_self_attention/Reshape_4:output:0Etransformer_block/multi_head_self_attention/transpose_4/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_5/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_5/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_5/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_5/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_5/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_5ReshapeFtransformer_block/multi_head_self_attention/dense_1/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_5/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_5/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_5	Transpose>transformer_block/multi_head_self_attention/Reshape_5:output:0Etransformer_block/multi_head_self_attention/transpose_5/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������
=transformer_block/multi_head_self_attention/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
=transformer_block/multi_head_self_attention/Reshape_6/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/multi_head_self_attention/Reshape_6/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/2:output:0Ftransformer_block/multi_head_self_attention/Reshape_6/shape/3:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_6ReshapeFtransformer_block/multi_head_self_attention/dense_2/BiasAdd_1:output:0Dtransformer_block/multi_head_self_attention/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_6/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_6	Transpose>transformer_block/multi_head_self_attention/Reshape_6:output:0Etransformer_block/multi_head_self_attention/transpose_6/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
4transformer_block/multi_head_self_attention/MatMul_2BatchMatMulV2;transformer_block/multi_head_self_attention/transpose_4:y:0;transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(�
3transformer_block/multi_head_self_attention/Shape_3Shape;transformer_block/multi_head_self_attention/transpose_5:y:0*
T0*
_output_shapes
:�
Atransformer_block/multi_head_self_attention/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Ctransformer_block/multi_head_self_attention/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ctransformer_block/multi_head_self_attention/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
;transformer_block/multi_head_self_attention/strided_slice_3StridedSlice<transformer_block/multi_head_self_attention/Shape_3:output:0Jtransformer_block/multi_head_self_attention/strided_slice_3/stack:output:0Ltransformer_block/multi_head_self_attention/strided_slice_3/stack_1:output:0Ltransformer_block/multi_head_self_attention/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
2transformer_block/multi_head_self_attention/Cast_1CastDtransformer_block/multi_head_self_attention/strided_slice_3:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2transformer_block/multi_head_self_attention/Sqrt_1Sqrt6transformer_block/multi_head_self_attention/Cast_1:y:0*
T0*
_output_shapes
: �
5transformer_block/multi_head_self_attention/truediv_1RealDiv=transformer_block/multi_head_self_attention/MatMul_2:output:06transformer_block/multi_head_self_attention/Sqrt_1:y:0*
T0*A
_output_shapes/
-:+����������������������������
5transformer_block/multi_head_self_attention/Softmax_1Softmax9transformer_block/multi_head_self_attention/truediv_1:z:0*
T0*A
_output_shapes/
-:+����������������������������
4transformer_block/multi_head_self_attention/MatMul_3BatchMatMulV2?transformer_block/multi_head_self_attention/Softmax_1:softmax:0;transformer_block/multi_head_self_attention/transpose_6:y:0*
T0*8
_output_shapes&
$:"������������������ �
<transformer_block/multi_head_self_attention/transpose_7/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
7transformer_block/multi_head_self_attention/transpose_7	Transpose=transformer_block/multi_head_self_attention/MatMul_3:output:0Etransformer_block/multi_head_self_attention/transpose_7/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
=transformer_block/multi_head_self_attention/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
=transformer_block/multi_head_self_attention/Reshape_7/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
;transformer_block/multi_head_self_attention/Reshape_7/shapePackDtransformer_block/multi_head_self_attention/strided_slice_2:output:0Ftransformer_block/multi_head_self_attention/Reshape_7/shape/1:output:0Ftransformer_block/multi_head_self_attention/Reshape_7/shape/2:output:0*
N*
T0*
_output_shapes
:�
5transformer_block/multi_head_self_attention/Reshape_7Reshape;transformer_block/multi_head_self_attention/transpose_7:y:0Dtransformer_block/multi_head_self_attention/Reshape_7/shape:output:0*
T0*5
_output_shapes#
!:��������������������
Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpReadVariableOpUtransformer_block_multi_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ShapeShape>transformer_block/multi_head_self_attention/Reshape_7:output:0*
T0*
_output_shapes
:�
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2GatherV2Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Jtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1GatherV2Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Shape:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0Xtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ProdProdQtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1ProdStransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2_1:output:0Ptransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: �
Ktransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concatConcatV2Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/free:output:0Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/axes:output:0Ttransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Etransformer_block/multi_head_self_attention/dense_3/Tensordot_1/stackPackMtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod:output:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Itransformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose	Transpose>transformer_block/multi_head_self_attention/Reshape_7:output:0Otransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat:output:0*
T0*5
_output_shapes#
!:��������������������
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReshapeReshapeMtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/transpose:y:0Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
Ftransformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMulMatMulPtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Reshape:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Gtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Mtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Htransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1ConcatV2Qtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/GatherV2:output:0Ptransformer_block/multi_head_self_attention/dense_3/Tensordot_1/Const_2:output:0Vtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
?transformer_block/multi_head_self_attention/dense_3/Tensordot_1ReshapePtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/MatMul:product:0Qtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpReadVariableOpStransformer_block_multi_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=transformer_block/multi_head_self_attention/dense_3/BiasAdd_1BiasAddHtransformer_block/multi_head_self_attention/dense_3/Tensordot_1:output:0Ttransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
$transformer_block/dropout/Identity_1IdentityFtransformer_block/multi_head_self_attention/dense_3/BiasAdd_1:output:0*
T0*5
_output_shapes#
!:��������������������
transformer_block/add_2AddV2;transformer_block/layer_normalization_1/batchnorm/add_1:z:0-transformer_block/dropout/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Ftransformer_block/layer_normalization/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_block/layer_normalization/moments_1/meanMeantransformer_block/add_2:z:0Otransformer_block/layer_normalization/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_block/layer_normalization/moments_1/StopGradientStopGradient=transformer_block/layer_normalization/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_block/layer_normalization/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_2:z:0Etransformer_block/layer_normalization/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_block/layer_normalization/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_block/layer_normalization/moments_1/varianceMeanEtransformer_block/layer_normalization/moments_1/SquaredDifference:z:0Stransformer_block/layer_normalization/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_block/layer_normalization/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_block/layer_normalization/batchnorm_1/addAddV2Atransformer_block/layer_normalization/moments_1/variance:output:0@transformer_block/layer_normalization/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_block/layer_normalization/batchnorm_1/RsqrtRsqrt9transformer_block/layer_normalization/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpReadVariableOpKtransformer_block_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization/batchnorm_1/mulMul;transformer_block/layer_normalization/batchnorm_1/Rsqrt:y:0Ltransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/mul_1Multransformer_block/add_2:z:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/mul_2Mul=transformer_block/layer_normalization/moments_1/mean:output:09transformer_block/layer_normalization/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOpReadVariableOpGtransformer_block_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_block/layer_normalization/batchnorm_1/subSubHtransformer_block/layer_normalization/batchnorm_1/ReadVariableOp:value:0;transformer_block/layer_normalization/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_block/layer_normalization/batchnorm_1/add_1AddV2;transformer_block/layer_normalization/batchnorm_1/mul_1:z:09transformer_block/layer_normalization/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:�����������
?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0
5transformer_block/sequential/dense_4/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
5transformer_block/sequential/dense_4/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
6transformer_block/sequential/dense_4/Tensordot_1/ShapeShape;transformer_block/layer_normalization/batchnorm_1/add_1:z:0*
T0*
_output_shapes
:�
>transformer_block/sequential/dense_4/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot_1/GatherV2GatherV2?transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_4/Tensordot_1/free:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
@transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/sequential/dense_4/Tensordot_1/GatherV2_1GatherV2?transformer_block/sequential/dense_4/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Itransformer_block/sequential/dense_4/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
6transformer_block/sequential/dense_4/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_4/Tensordot_1/ProdProdBtransformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0?transformer_block/sequential/dense_4/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
8transformer_block/sequential/dense_4/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
7transformer_block/sequential/dense_4/Tensordot_1/Prod_1ProdDtransformer_block/sequential/dense_4/Tensordot_1/GatherV2_1:output:0Atransformer_block/sequential/dense_4/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential/dense_4/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_4/Tensordot_1/concatConcatV2>transformer_block/sequential/dense_4/Tensordot_1/free:output:0>transformer_block/sequential/dense_4/Tensordot_1/axes:output:0Etransformer_block/sequential/dense_4/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
6transformer_block/sequential/dense_4/Tensordot_1/stackPack>transformer_block/sequential/dense_4/Tensordot_1/Prod:output:0@transformer_block/sequential/dense_4/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
:transformer_block/sequential/dense_4/Tensordot_1/transpose	Transpose;transformer_block/layer_normalization/batchnorm_1/add_1:z:0@transformer_block/sequential/dense_4/Tensordot_1/concat:output:0*
T0*,
_output_shapes
:�����������
8transformer_block/sequential/dense_4/Tensordot_1/ReshapeReshape>transformer_block/sequential/dense_4/Tensordot_1/transpose:y:0?transformer_block/sequential/dense_4/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
7transformer_block/sequential/dense_4/Tensordot_1/MatMulMatMulAtransformer_block/sequential/dense_4/Tensordot_1/Reshape:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
8transformer_block/sequential/dense_4/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@�
>transformer_block/sequential/dense_4/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_4/Tensordot_1/concat_1ConcatV2Btransformer_block/sequential/dense_4/Tensordot_1/GatherV2:output:0Atransformer_block/sequential/dense_4/Tensordot_1/Const_2:output:0Gtransformer_block/sequential/dense_4/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
0transformer_block/sequential/dense_4/Tensordot_1ReshapeAtransformer_block/sequential/dense_4/Tensordot_1/MatMul:product:0Btransformer_block/sequential/dense_4/Tensordot_1/concat_1:output:0*
T0*+
_output_shapes
:���������@�
=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
.transformer_block/sequential/dense_4/BiasAdd_1BiasAdd9transformer_block/sequential/dense_4/Tensordot_1:output:0Etransformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@�
+transformer_block/sequential/dense_4/Relu_1Relu7transformer_block/sequential/dense_4/BiasAdd_1:output:0*
T0*+
_output_shapes
:���������@�
?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOpReadVariableOpFtransformer_block_sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0
5transformer_block/sequential/dense_5/Tensordot_1/axesConst*
_output_shapes
:*
dtype0*
valueB:�
5transformer_block/sequential/dense_5/Tensordot_1/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
6transformer_block/sequential/dense_5/Tensordot_1/ShapeShape9transformer_block/sequential/dense_4/Relu_1:activations:0*
T0*
_output_shapes
:�
>transformer_block/sequential/dense_5/Tensordot_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot_1/GatherV2GatherV2?transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_5/Tensordot_1/free:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
@transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
;transformer_block/sequential/dense_5/Tensordot_1/GatherV2_1GatherV2?transformer_block/sequential/dense_5/Tensordot_1/Shape:output:0>transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Itransformer_block/sequential/dense_5/Tensordot_1/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
6transformer_block/sequential/dense_5/Tensordot_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5transformer_block/sequential/dense_5/Tensordot_1/ProdProdBtransformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0?transformer_block/sequential/dense_5/Tensordot_1/Const:output:0*
T0*
_output_shapes
: �
8transformer_block/sequential/dense_5/Tensordot_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
7transformer_block/sequential/dense_5/Tensordot_1/Prod_1ProdDtransformer_block/sequential/dense_5/Tensordot_1/GatherV2_1:output:0Atransformer_block/sequential/dense_5/Tensordot_1/Const_1:output:0*
T0*
_output_shapes
: ~
<transformer_block/sequential/dense_5/Tensordot_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
7transformer_block/sequential/dense_5/Tensordot_1/concatConcatV2>transformer_block/sequential/dense_5/Tensordot_1/free:output:0>transformer_block/sequential/dense_5/Tensordot_1/axes:output:0Etransformer_block/sequential/dense_5/Tensordot_1/concat/axis:output:0*
N*
T0*
_output_shapes
:�
6transformer_block/sequential/dense_5/Tensordot_1/stackPack>transformer_block/sequential/dense_5/Tensordot_1/Prod:output:0@transformer_block/sequential/dense_5/Tensordot_1/Prod_1:output:0*
N*
T0*
_output_shapes
:�
:transformer_block/sequential/dense_5/Tensordot_1/transpose	Transpose9transformer_block/sequential/dense_4/Relu_1:activations:0@transformer_block/sequential/dense_5/Tensordot_1/concat:output:0*
T0*+
_output_shapes
:���������@�
8transformer_block/sequential/dense_5/Tensordot_1/ReshapeReshape>transformer_block/sequential/dense_5/Tensordot_1/transpose:y:0?transformer_block/sequential/dense_5/Tensordot_1/stack:output:0*
T0*0
_output_shapes
:�������������������
7transformer_block/sequential/dense_5/Tensordot_1/MatMulMatMulAtransformer_block/sequential/dense_5/Tensordot_1/Reshape:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8transformer_block/sequential/dense_5/Tensordot_1/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
>transformer_block/sequential/dense_5/Tensordot_1/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
9transformer_block/sequential/dense_5/Tensordot_1/concat_1ConcatV2Btransformer_block/sequential/dense_5/Tensordot_1/GatherV2:output:0Atransformer_block/sequential/dense_5/Tensordot_1/Const_2:output:0Gtransformer_block/sequential/dense_5/Tensordot_1/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
0transformer_block/sequential/dense_5/Tensordot_1ReshapeAtransformer_block/sequential/dense_5/Tensordot_1/MatMul:product:0Btransformer_block/sequential/dense_5/Tensordot_1/concat_1:output:0*
T0*,
_output_shapes
:�����������
=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOpReadVariableOpDtransformer_block_sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.transformer_block/sequential/dense_5/BiasAdd_1BiasAdd9transformer_block/sequential/dense_5/Tensordot_1:output:0Etransformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
&transformer_block/dropout_1/Identity_1Identity7transformer_block/sequential/dense_5/BiasAdd_1:output:0*
T0*,
_output_shapes
:�����������
transformer_block/add_3AddV2;transformer_block/layer_normalization/batchnorm_1/add_1:z:0/transformer_block/dropout_1/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Htransformer_block/layer_normalization_1/moments_1/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_block/layer_normalization_1/moments_1/meanMeantransformer_block/add_3:z:0Qtransformer_block/layer_normalization_1/moments_1/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
>transformer_block/layer_normalization_1/moments_1/StopGradientStopGradient?transformer_block/layer_normalization_1/moments_1/mean:output:0*
T0*+
_output_shapes
:����������
Ctransformer_block/layer_normalization_1/moments_1/SquaredDifferenceSquaredDifferencetransformer_block/add_3:z:0Gtransformer_block/layer_normalization_1/moments_1/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_block/layer_normalization_1/moments_1/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:transformer_block/layer_normalization_1/moments_1/varianceMeanGtransformer_block/layer_normalization_1/moments_1/SquaredDifference:z:0Utransformer_block/layer_normalization_1/moments_1/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(~
9transformer_block/layer_normalization_1/batchnorm_1/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
7transformer_block/layer_normalization_1/batchnorm_1/addAddV2Ctransformer_block/layer_normalization_1/moments_1/variance:output:0Btransformer_block/layer_normalization_1/batchnorm_1/add/y:output:0*
T0*+
_output_shapes
:����������
9transformer_block/layer_normalization_1/batchnorm_1/RsqrtRsqrt;transformer_block/layer_normalization_1/batchnorm_1/add:z:0*
T0*+
_output_shapes
:����������
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpReadVariableOpMtransformer_block_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_block/layer_normalization_1/batchnorm_1/mulMul=transformer_block/layer_normalization_1/batchnorm_1/Rsqrt:y:0Ntransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/mul_1Multransformer_block/add_3:z:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/mul_2Mul?transformer_block/layer_normalization_1/moments_1/mean:output:0;transformer_block/layer_normalization_1/batchnorm_1/mul:z:0*
T0*,
_output_shapes
:�����������
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpReadVariableOpItransformer_block_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_block/layer_normalization_1/batchnorm_1/subSubJtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp:value:0=transformer_block/layer_normalization_1/batchnorm_1/mul_2:z:0*
T0*,
_output_shapes
:�����������
9transformer_block/layer_normalization_1/batchnorm_1/add_1AddV2=transformer_block/layer_normalization_1/batchnorm_1/mul_1:z:0;transformer_block/layer_normalization_1/batchnorm_1/sub:z:0*
T0*,
_output_shapes
:����������q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMean=transformer_block/layer_normalization_1/batchnorm_1/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:����������y
dropout_2/IdentityIdentity&global_average_pooling1d/Mean:output:0*
T0*(
_output_shapes
:�����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_6/MatMulMatMuldropout_2/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@`
dense_6/SeluSeludense_6/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
dense_7/MatMulMatMuldense_6/Selu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������`
dense_7/SeluSeludense_7/BiasAdd:output:0*
T0*'
_output_shapes
:���������l
dropout_3/IdentityIdentitydense_7/Selu:activations:0*
T0*'
_output_shapes
:����������
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_8/MatMulMatMuldropout_3/Identity:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_8/SoftmaxSoftmaxdense_8/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_8/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookup?^transformer_block/layer_normalization/batchnorm/ReadVariableOpC^transformer_block/layer_normalization/batchnorm/mul/ReadVariableOpA^transformer_block/layer_normalization/batchnorm_1/ReadVariableOpE^transformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpA^transformer_block/layer_normalization_1/batchnorm/ReadVariableOpE^transformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpC^transformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpG^transformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpI^transformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpK^transformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpM^transformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpK^transformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpM^transformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpO^transformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp<^transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp>^transformer_block/sequential/dense_4/Tensordot/ReadVariableOp@^transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp<^transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp>^transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp>^transformer_block/sequential/dense_5/Tensordot/ReadVariableOp@^transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2�
>transformer_block/layer_normalization/batchnorm/ReadVariableOp>transformer_block/layer_normalization/batchnorm/ReadVariableOp2�
Btransformer_block/layer_normalization/batchnorm/mul/ReadVariableOpBtransformer_block/layer_normalization/batchnorm/mul/ReadVariableOp2�
@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp@transformer_block/layer_normalization/batchnorm_1/ReadVariableOp2�
Dtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOpDtransformer_block/layer_normalization/batchnorm_1/mul/ReadVariableOp2�
@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp@transformer_block/layer_normalization_1/batchnorm/ReadVariableOp2�
Dtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOpDtransformer_block/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Btransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOpBtransformer_block/layer_normalization_1/batchnorm_1/ReadVariableOp2�
Ftransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOpFtransformer_block/layer_normalization_1/batchnorm_1/mul/ReadVariableOp2�
Htransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOpHtransformer_block/multi_head_self_attention/dense/BiasAdd/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOpJtransformer_block/multi_head_self_attention/dense/BiasAdd_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOpJtransformer_block/multi_head_self_attention/dense/Tensordot/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_1/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_2/Tensordot_1/ReadVariableOp2�
Jtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpJtransformer_block/multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/BiasAdd_1/ReadVariableOp2�
Ltransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOpLtransformer_block/multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2�
Ntransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOpNtransformer_block/multi_head_self_attention/dense_3/Tensordot_1/ReadVariableOp2z
;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_4/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp=transformer_block/sequential/dense_4/BiasAdd_1/ReadVariableOp2~
=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp=transformer_block/sequential/dense_4/Tensordot/ReadVariableOp2�
?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp?transformer_block/sequential/dense_4/Tensordot_1/ReadVariableOp2z
;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp;transformer_block/sequential/dense_5/BiasAdd/ReadVariableOp2~
=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp=transformer_block/sequential/dense_5/BiasAdd_1/ReadVariableOp2~
=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp=transformer_block/sequential/dense_5/Tensordot/ReadVariableOp2�
?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp?transformer_block/sequential/dense_5/Tensordot_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_10113
dense_4_input
unknown:	�@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10089t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_namedense_4_input
�
�
%__inference_model_layer_call_fn_11259
input_1
unknown:	�
	unknown_0:
��
	unknown_1:
��
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:	�

unknown_10:	�

unknown_11:	�@

unknown_12:@

unknown_13:	@�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:

unknown_21:

unknown_22:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22*$
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_11155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
E
)__inference_dropout_3_layer_call_fn_13340

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10533`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_dense_4_layer_call_and_return_conditional_losses_13562

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_sequential_layer_call_fn_13408

inputs
unknown:	�@
	unknown_0:@
	unknown_1:	@�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_10089t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_10978

inputsU
Amulti_head_self_attention_dense_tensordot_readvariableop_resource:
��N
?multi_head_self_attention_dense_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�G
4sequential_dense_4_tensordot_readvariableop_resource:	�@@
2sequential_dense_4_biasadd_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�6multi_head_self_attention/dense/BiasAdd/ReadVariableOp�8multi_head_self_attention/dense/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�)sequential/dense_4/BiasAdd/ReadVariableOp�+sequential/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0x
.multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_self_attention/dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/GatherV2GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/free:output:0@multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/axes:output:0Bmulti_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.multi_head_self_attention/dense/Tensordot/ProdProd;multi_head_self_attention/dense/Tensordot/GatherV2:output:08multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense/Tensordot/Prod_1Prod=multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0:multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0multi_head_self_attention/dense/Tensordot/concatConcatV27multi_head_self_attention/dense/Tensordot/free:output:07multi_head_self_attention/dense/Tensordot/axes:output:0>multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/multi_head_self_attention/dense/Tensordot/stackPack7multi_head_self_attention/dense/Tensordot/Prod:output:09multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3multi_head_self_attention/dense/Tensordot/transpose	Transposeinputs9multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1multi_head_self_attention/dense/Tensordot/ReshapeReshape7multi_head_self_attention/dense/Tensordot/transpose:y:08multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0multi_head_self_attention/dense/Tensordot/MatMulMatMul:multi_head_self_attention/dense/Tensordot/Reshape:output:0@multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������|
1multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�y
7multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/concat_1ConcatV2;multi_head_self_attention/dense/Tensordot/GatherV2:output:0:multi_head_self_attention/dense/Tensordot/Const_2:output:0@multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)multi_head_self_attention/dense/TensordotReshape:multi_head_self_attention/dense/Tensordot/MatMul:product:0;multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
6multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOp?multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'multi_head_self_attention/dense/BiasAddBiasAdd2multi_head_self_attention/dense/Tensordot:output:0>multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape0multi_head_self_attention/dense/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_1/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(z
!multi_head_self_attention/Shape_1Shape)multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)multi_head_self_attention/strided_slice_1StridedSlice*multi_head_self_attention/Shape_1:output:08multi_head_self_attention/strided_slice_1/stack:output:0:multi_head_self_attention/strided_slice_1/stack_1:output:0:multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
multi_head_self_attention/CastCast2multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������n
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_3/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:�������������������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
dropout/dropout/MulMul2multi_head_self_attention/dense_3/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*5
_output_shapes#
!:�������������������w
dropout/dropout/ShapeShape2multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*5
_output_shapes#
!:�������������������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:��������������������
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:��������������������
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*5
_output_shapes#
!:�������������������f
addAddV2inputsdropout/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
+sequential/dense_4/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_4/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/GatherV2GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/free:output:03sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_4/Tensordot/GatherV2_1GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/axes:output:05sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_4/Tensordot/ProdProd.sequential/dense_4/Tensordot/GatherV2:output:0+sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_4/Tensordot/Prod_1Prod0sequential/dense_4/Tensordot/GatherV2_1:output:0-sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_4/Tensordot/concatConcatV2*sequential/dense_4/Tensordot/free:output:0*sequential/dense_4/Tensordot/axes:output:01sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_4/Tensordot/stackPack*sequential/dense_4/Tensordot/Prod:output:0,sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_4/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
$sequential/dense_4/Tensordot/ReshapeReshape*sequential/dense_4/Tensordot/transpose:y:0+sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_4/Tensordot/MatMulMatMul-sequential/dense_4/Tensordot/Reshape:output:03sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/concat_1ConcatV2.sequential/dense_4/Tensordot/GatherV2:output:0-sequential/dense_4/Tensordot/Const_2:output:03sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_4/TensordotReshape-sequential/dense_4/Tensordot/MatMul:product:0.sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_4/BiasAddBiasAdd%sequential/dense_4/Tensordot:output:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@z
sequential/dense_4/ReluRelu#sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_5/Tensordot/ShapeShape%sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose%sequential/dense_4/Relu:activations:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
dropout_1/dropout/MulMul#sequential/dense_5/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:����������j
dropout_1/dropout/ShapeShape#sequential/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:�����������
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/dropout/Mul_1:z:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp7^multi_head_self_attention/dense/BiasAdd/ReadVariableOp9^multi_head_self_attention/dense/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp,^sequential/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2p
6multi_head_self_attention/dense/BiasAdd/ReadVariableOp6multi_head_self_attention/dense/BiasAdd/ReadVariableOp2t
8multi_head_self_attention/dense/Tensordot/ReadVariableOp8multi_head_self_attention/dense/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2Z
+sequential/dense_4/Tensordot/ReadVariableOp+sequential/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�6
�

@__inference_model_layer_call_and_return_conditional_losses_11336
input_15
"token_and_position_embedding_11262:	�6
"token_and_position_embedding_11264:
��+
transformer_block_11267:
��&
transformer_block_11269:	�+
transformer_block_11271:
��&
transformer_block_11273:	�+
transformer_block_11275:
��&
transformer_block_11277:	�+
transformer_block_11279:
��&
transformer_block_11281:	�&
transformer_block_11283:	�&
transformer_block_11285:	�*
transformer_block_11287:	�@%
transformer_block_11289:@*
transformer_block_11291:	@�&
transformer_block_11293:	�&
transformer_block_11295:	�&
transformer_block_11297:	� 
dense_6_11319:	�@
dense_6_11321:@
dense_7_11324:@
dense_7_11326:
dense_8_11330:
dense_8_11332:
identity��dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�dense_8/StatefulPartitionedCall�4token_and_position_embedding/StatefulPartitionedCall�)transformer_block/StatefulPartitionedCall�+transformer_block/StatefulPartitionedCall_1�
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_11262"token_and_position_embedding_11264*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_10185�
)transformer_block/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0transformer_block_11267transformer_block_11269transformer_block_11271transformer_block_11273transformer_block_11275transformer_block_11277transformer_block_11279transformer_block_11281transformer_block_11283transformer_block_11285transformer_block_11287transformer_block_11289transformer_block_11291transformer_block_11293transformer_block_11295transformer_block_11297*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435�
+transformer_block/StatefulPartitionedCall_1StatefulPartitionedCall2transformer_block/StatefulPartitionedCall:output:0transformer_block_11267transformer_block_11269transformer_block_11271transformer_block_11273transformer_block_11275transformer_block_11277transformer_block_11279transformer_block_11281transformer_block_11283transformer_block_11285transformer_block_11287transformer_block_11289transformer_block_11291transformer_block_11293transformer_block_11295transformer_block_11297*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *U
fPRN
L__inference_transformer_block_layer_call_and_return_conditional_losses_10435�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_block/StatefulPartitionedCall_1:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_10151�
dropout_2/PartitionedCallPartitionedCall1global_average_pooling1d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10492�
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_6_11319dense_6_11321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_6_layer_call_and_return_conditional_losses_10505�
dense_7/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0dense_7_11324dense_7_11326*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_7_layer_call_and_return_conditional_losses_10522�
dropout_3/PartitionedCallPartitionedCall(dense_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_10533�
dense_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0dense_8_11330dense_8_11332*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_10546w
IdentityIdentity(dense_8/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall*^transformer_block/StatefulPartitionedCall,^transformer_block/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*V
_input_shapesE
C:���������: : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2V
)transformer_block/StatefulPartitionedCall)transformer_block/StatefulPartitionedCall2Z
+transformer_block/StatefulPartitionedCall_1+transformer_block/StatefulPartitionedCall_1:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�>
�
E__inference_sequential_layer_call_and_return_conditional_losses_13465

inputs<
)dense_4_tensordot_readvariableop_resource:	�@5
'dense_4_biasadd_readvariableop_resource:@<
)dense_5_tensordot_readvariableop_resource:	@�6
'dense_5_biasadd_readvariableop_resource:	�
identity��dense_4/BiasAdd/ReadVariableOp� dense_4/Tensordot/ReadVariableOp�dense_5/BiasAdd/ReadVariableOp� dense_5/Tensordot/ReadVariableOp�
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_4/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_4/Tensordot/transpose	Transposeinputs!dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@c
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@d
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
 dense_5/Tensordot/ReadVariableOpReadVariableOp)dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0`
dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_5/Tensordot/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:a
dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/free:output:0(dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/GatherV2_1GatherV2 dense_5/Tensordot/Shape:output:0dense_5/Tensordot/axes:output:0*dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/ProdProd#dense_5/Tensordot/GatherV2:output:0 dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_5/Tensordot/Prod_1Prod%dense_5/Tensordot/GatherV2_1:output:0"dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concatConcatV2dense_5/Tensordot/free:output:0dense_5/Tensordot/axes:output:0&dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/stackPackdense_5/Tensordot/Prod:output:0!dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_5/Tensordot/transpose	Transposedense_4/Relu:activations:0!dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
dense_5/Tensordot/ReshapeReshapedense_5/Tensordot/transpose:y:0 dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_5/Tensordot/MatMulMatMul"dense_5/Tensordot/Reshape:output:0(dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_5/Tensordot/concat_1ConcatV2#dense_5/Tensordot/GatherV2:output:0"dense_5/Tensordot/Const_2:output:0(dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_5/TensordotReshape"dense_5/Tensordot/MatMul:product:0#dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_5/BiasAddBiasAdddense_5/Tensordot:output:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp!^dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2D
 dense_5/Tensordot/ReadVariableOp dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
b
)__inference_dropout_2_layer_call_fn_13278

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_10677p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_10127
dense_4_input 
dense_4_10116:	�@
dense_4_10118:@ 
dense_5_10121:	@�
dense_5_10123:	�
identity��dense_4/StatefulPartitionedCall�dense_5/StatefulPartitionedCall�
dense_4/StatefulPartitionedCallStatefulPartitionedCalldense_4_inputdense_4_10116dense_4_10118*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9986�
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10121dense_5_10123*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_10022|
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_namedense_4_input
��
�
L__inference_transformer_block_layer_call_and_return_conditional_losses_12999

inputsU
Amulti_head_self_attention_dense_tensordot_readvariableop_resource:
��N
?multi_head_self_attention_dense_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_1_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_1_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_2_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_2_biasadd_readvariableop_resource:	�W
Cmulti_head_self_attention_dense_3_tensordot_readvariableop_resource:
��P
Amulti_head_self_attention_dense_3_biasadd_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�G
4sequential_dense_4_tensordot_readvariableop_resource:	�@@
2sequential_dense_4_biasadd_readvariableop_resource:@G
4sequential_dense_5_tensordot_readvariableop_resource:	@�A
2sequential_dense_5_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�6multi_head_self_attention/dense/BiasAdd/ReadVariableOp�8multi_head_self_attention/dense/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp�8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp�:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp�)sequential/dense_4/BiasAdd/ReadVariableOp�+sequential/dense_4/Tensordot/ReadVariableOp�)sequential/dense_5/BiasAdd/ReadVariableOp�+sequential/dense_5/Tensordot/ReadVariableOpU
multi_head_self_attention/ShapeShapeinputs*
T0*
_output_shapes
:w
-multi_head_self_attention/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/multi_head_self_attention/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/multi_head_self_attention/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
'multi_head_self_attention/strided_sliceStridedSlice(multi_head_self_attention/Shape:output:06multi_head_self_attention/strided_slice/stack:output:08multi_head_self_attention/strided_slice/stack_1:output:08multi_head_self_attention/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8multi_head_self_attention/dense/Tensordot/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0x
.multi_head_self_attention/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
.multi_head_self_attention/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       e
/multi_head_self_attention/dense/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:y
7multi_head_self_attention/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/GatherV2GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/free:output:0@multi_head_self_attention/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
9multi_head_self_attention/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense/Tensordot/GatherV2_1GatherV28multi_head_self_attention/dense/Tensordot/Shape:output:07multi_head_self_attention/dense/Tensordot/axes:output:0Bmulti_head_self_attention/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:y
/multi_head_self_attention/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
.multi_head_self_attention/dense/Tensordot/ProdProd;multi_head_self_attention/dense/Tensordot/GatherV2:output:08multi_head_self_attention/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: {
1multi_head_self_attention/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense/Tensordot/Prod_1Prod=multi_head_self_attention/dense/Tensordot/GatherV2_1:output:0:multi_head_self_attention/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: w
5multi_head_self_attention/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0multi_head_self_attention/dense/Tensordot/concatConcatV27multi_head_self_attention/dense/Tensordot/free:output:07multi_head_self_attention/dense/Tensordot/axes:output:0>multi_head_self_attention/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
/multi_head_self_attention/dense/Tensordot/stackPack7multi_head_self_attention/dense/Tensordot/Prod:output:09multi_head_self_attention/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
3multi_head_self_attention/dense/Tensordot/transpose	Transposeinputs9multi_head_self_attention/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
1multi_head_self_attention/dense/Tensordot/ReshapeReshape7multi_head_self_attention/dense/Tensordot/transpose:y:08multi_head_self_attention/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
0multi_head_self_attention/dense/Tensordot/MatMulMatMul:multi_head_self_attention/dense/Tensordot/Reshape:output:0@multi_head_self_attention/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������|
1multi_head_self_attention/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�y
7multi_head_self_attention/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense/Tensordot/concat_1ConcatV2;multi_head_self_attention/dense/Tensordot/GatherV2:output:0:multi_head_self_attention/dense/Tensordot/Const_2:output:0@multi_head_self_attention/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
)multi_head_self_attention/dense/TensordotReshape:multi_head_self_attention/dense/Tensordot/MatMul:product:0;multi_head_self_attention/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
6multi_head_self_attention/dense/BiasAdd/ReadVariableOpReadVariableOp?multi_head_self_attention_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
'multi_head_self_attention/dense/BiasAddBiasAdd2multi_head_self_attention/dense/Tensordot:output:0>multi_head_self_attention/dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_1_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_1/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/free:output:0Bmulti_head_self_attention/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_1/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_1/Tensordot/Shape:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0Dmulti_head_self_attention/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_1/Tensordot/ProdProd=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_1/Tensordot/Prod_1Prod?multi_head_self_attention/dense_1/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_1/Tensordot/concatConcatV29multi_head_self_attention/dense_1/Tensordot/free:output:09multi_head_self_attention/dense_1/Tensordot/axes:output:0@multi_head_self_attention/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_1/Tensordot/stackPack9multi_head_self_attention/dense_1/Tensordot/Prod:output:0;multi_head_self_attention/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_1/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_1/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_1/Tensordot/ReshapeReshape9multi_head_self_attention/dense_1/Tensordot/transpose:y:0:multi_head_self_attention/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_1/Tensordot/MatMulMatMul<multi_head_self_attention/dense_1/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_1/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_1/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_1/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_1/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_1/TensordotReshape<multi_head_self_attention/dense_1/Tensordot/MatMul:product:0=multi_head_self_attention/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_1/BiasAddBiasAdd4multi_head_self_attention/dense_1/Tensordot:output:0@multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
1multi_head_self_attention/dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/free:output:0Bmulti_head_self_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_2/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_2/Tensordot/Shape:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0Dmulti_head_self_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_2/Tensordot/ProdProd=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_2/Tensordot/Prod_1Prod?multi_head_self_attention/dense_2/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_2/Tensordot/concatConcatV29multi_head_self_attention/dense_2/Tensordot/free:output:09multi_head_self_attention/dense_2/Tensordot/axes:output:0@multi_head_self_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_2/Tensordot/stackPack9multi_head_self_attention/dense_2/Tensordot/Prod:output:0;multi_head_self_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_2/Tensordot/transpose	Transposeinputs;multi_head_self_attention/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
3multi_head_self_attention/dense_2/Tensordot/ReshapeReshape9multi_head_self_attention/dense_2/Tensordot/transpose:y:0:multi_head_self_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_2/Tensordot/MatMulMatMul<multi_head_self_attention/dense_2/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_2/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_2/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_2/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_2/TensordotReshape<multi_head_self_attention/dense_2/Tensordot/MatMul:product:0=multi_head_self_attention/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_2/BiasAddBiasAdd4multi_head_self_attention/dense_2/Tensordot:output:0@multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������t
)multi_head_self_attention/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������k
)multi_head_self_attention/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :k
)multi_head_self_attention/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
'multi_head_self_attention/Reshape/shapePack0multi_head_self_attention/strided_slice:output:02multi_head_self_attention/Reshape/shape/1:output:02multi_head_self_attention/Reshape/shape/2:output:02multi_head_self_attention/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!multi_head_self_attention/ReshapeReshape0multi_head_self_attention/dense/BiasAdd:output:00multi_head_self_attention/Reshape/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
(multi_head_self_attention/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
#multi_head_self_attention/transpose	Transpose*multi_head_self_attention/Reshape:output:01multi_head_self_attention/transpose/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_1/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_1/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_1/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_1/shape/1:output:04multi_head_self_attention/Reshape_1/shape/2:output:04multi_head_self_attention/Reshape_1/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_1Reshape2multi_head_self_attention/dense_1/BiasAdd:output:02multi_head_self_attention/Reshape_1/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_1	Transpose,multi_head_self_attention/Reshape_1:output:03multi_head_self_attention/transpose_1/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_2/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������m
+multi_head_self_attention/Reshape_2/shape/2Const*
_output_shapes
: *
dtype0*
value	B :m
+multi_head_self_attention/Reshape_2/shape/3Const*
_output_shapes
: *
dtype0*
value	B : �
)multi_head_self_attention/Reshape_2/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_2/shape/1:output:04multi_head_self_attention/Reshape_2/shape/2:output:04multi_head_self_attention/Reshape_2/shape/3:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_2Reshape2multi_head_self_attention/dense_2/BiasAdd:output:02multi_head_self_attention/Reshape_2/shape:output:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_2	Transpose,multi_head_self_attention/Reshape_2:output:03multi_head_self_attention/transpose_2/perm:output:0*
T0*8
_output_shapes&
$:"������������������ �
 multi_head_self_attention/MatMulBatchMatMulV2'multi_head_self_attention/transpose:y:0)multi_head_self_attention/transpose_1:y:0*
T0*A
_output_shapes/
-:+���������������������������*
adj_y(z
!multi_head_self_attention/Shape_1Shape)multi_head_self_attention/transpose_1:y:0*
T0*
_output_shapes
:�
/multi_head_self_attention/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������{
1multi_head_self_attention/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1multi_head_self_attention/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)multi_head_self_attention/strided_slice_1StridedSlice*multi_head_self_attention/Shape_1:output:08multi_head_self_attention/strided_slice_1/stack:output:0:multi_head_self_attention/strided_slice_1/stack_1:output:0:multi_head_self_attention/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
multi_head_self_attention/CastCast2multi_head_self_attention/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: k
multi_head_self_attention/SqrtSqrt"multi_head_self_attention/Cast:y:0*
T0*
_output_shapes
: �
!multi_head_self_attention/truedivRealDiv)multi_head_self_attention/MatMul:output:0"multi_head_self_attention/Sqrt:y:0*
T0*A
_output_shapes/
-:+����������������������������
!multi_head_self_attention/SoftmaxSoftmax%multi_head_self_attention/truediv:z:0*
T0*A
_output_shapes/
-:+����������������������������
"multi_head_self_attention/MatMul_1BatchMatMulV2+multi_head_self_attention/Softmax:softmax:0)multi_head_self_attention/transpose_2:y:0*
T0*8
_output_shapes&
$:"������������������ �
*multi_head_self_attention/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
%multi_head_self_attention/transpose_3	Transpose+multi_head_self_attention/MatMul_1:output:03multi_head_self_attention/transpose_3/perm:output:0*
T0*8
_output_shapes&
$:"������������������ v
+multi_head_self_attention/Reshape_3/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������n
+multi_head_self_attention/Reshape_3/shape/2Const*
_output_shapes
: *
dtype0*
value
B :��
)multi_head_self_attention/Reshape_3/shapePack0multi_head_self_attention/strided_slice:output:04multi_head_self_attention/Reshape_3/shape/1:output:04multi_head_self_attention/Reshape_3/shape/2:output:0*
N*
T0*
_output_shapes
:�
#multi_head_self_attention/Reshape_3Reshape)multi_head_self_attention/transpose_3:y:02multi_head_self_attention/Reshape_3/shape:output:0*
T0*5
_output_shapes#
!:��������������������
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOpReadVariableOpCmulti_head_self_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
��*
dtype0z
0multi_head_self_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
0multi_head_self_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
1multi_head_self_attention/dense_3/Tensordot/ShapeShape,multi_head_self_attention/Reshape_3:output:0*
T0*
_output_shapes
:{
9multi_head_self_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/GatherV2GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/free:output:0Bmulti_head_self_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:}
;multi_head_self_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
6multi_head_self_attention/dense_3/Tensordot/GatherV2_1GatherV2:multi_head_self_attention/dense_3/Tensordot/Shape:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0Dmulti_head_self_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:{
1multi_head_self_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
0multi_head_self_attention/dense_3/Tensordot/ProdProd=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0:multi_head_self_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: }
3multi_head_self_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
2multi_head_self_attention/dense_3/Tensordot/Prod_1Prod?multi_head_self_attention/dense_3/Tensordot/GatherV2_1:output:0<multi_head_self_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: y
7multi_head_self_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
2multi_head_self_attention/dense_3/Tensordot/concatConcatV29multi_head_self_attention/dense_3/Tensordot/free:output:09multi_head_self_attention/dense_3/Tensordot/axes:output:0@multi_head_self_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
1multi_head_self_attention/dense_3/Tensordot/stackPack9multi_head_self_attention/dense_3/Tensordot/Prod:output:0;multi_head_self_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
5multi_head_self_attention/dense_3/Tensordot/transpose	Transpose,multi_head_self_attention/Reshape_3:output:0;multi_head_self_attention/dense_3/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:��������������������
3multi_head_self_attention/dense_3/Tensordot/ReshapeReshape9multi_head_self_attention/dense_3/Tensordot/transpose:y:0:multi_head_self_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
2multi_head_self_attention/dense_3/Tensordot/MatMulMatMul<multi_head_self_attention/dense_3/Tensordot/Reshape:output:0Bmulti_head_self_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
3multi_head_self_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�{
9multi_head_self_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
4multi_head_self_attention/dense_3/Tensordot/concat_1ConcatV2=multi_head_self_attention/dense_3/Tensordot/GatherV2:output:0<multi_head_self_attention/dense_3/Tensordot/Const_2:output:0Bmulti_head_self_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
+multi_head_self_attention/dense_3/TensordotReshape<multi_head_self_attention/dense_3/Tensordot/MatMul:product:0=multi_head_self_attention/dense_3/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:��������������������
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOpAmulti_head_self_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
)multi_head_self_attention/dense_3/BiasAddBiasAdd4multi_head_self_attention/dense_3/Tensordot:output:0@multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:��������������������
dropout/IdentityIdentity2multi_head_self_attention/dense_3/BiasAdd:output:0*
T0*5
_output_shapes#
!:�������������������f
addAddV2inputsdropout/Identity:output:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeanadd:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferenceadd:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muladd:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
+sequential/dense_4/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0k
!sequential/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       y
"sequential/dense_4/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:l
*sequential/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/GatherV2GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/free:output:03sequential/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_4/Tensordot/GatherV2_1GatherV2+sequential/dense_4/Tensordot/Shape:output:0*sequential/dense_4/Tensordot/axes:output:05sequential/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_4/Tensordot/ProdProd.sequential/dense_4/Tensordot/GatherV2:output:0+sequential/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_4/Tensordot/Prod_1Prod0sequential/dense_4/Tensordot/GatherV2_1:output:0-sequential/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_4/Tensordot/concatConcatV2*sequential/dense_4/Tensordot/free:output:0*sequential/dense_4/Tensordot/axes:output:01sequential/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_4/Tensordot/stackPack*sequential/dense_4/Tensordot/Prod:output:0,sequential/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_4/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0,sequential/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
$sequential/dense_4/Tensordot/ReshapeReshape*sequential/dense_4/Tensordot/transpose:y:0+sequential/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_4/Tensordot/MatMulMatMul-sequential/dense_4/Tensordot/Reshape:output:03sequential/dense_4/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@n
$sequential/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@l
*sequential/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_4/Tensordot/concat_1ConcatV2.sequential/dense_4/Tensordot/GatherV2:output:0-sequential/dense_4/Tensordot/Const_2:output:03sequential/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_4/TensordotReshape-sequential/dense_4/Tensordot/MatMul:product:0.sequential/dense_4/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������@�
)sequential/dense_4/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential/dense_4/BiasAddBiasAdd%sequential/dense_4/Tensordot:output:01sequential/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������@z
sequential/dense_4/ReluRelu#sequential/dense_4/BiasAdd:output:0*
T0*+
_output_shapes
:���������@�
+sequential/dense_5/Tensordot/ReadVariableOpReadVariableOp4sequential_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0k
!sequential/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:r
!sequential/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
"sequential/dense_5/Tensordot/ShapeShape%sequential/dense_4/Relu:activations:0*
T0*
_output_shapes
:l
*sequential/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/GatherV2GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/free:output:03sequential/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
,sequential/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'sequential/dense_5/Tensordot/GatherV2_1GatherV2+sequential/dense_5/Tensordot/Shape:output:0*sequential/dense_5/Tensordot/axes:output:05sequential/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
"sequential/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
!sequential/dense_5/Tensordot/ProdProd.sequential/dense_5/Tensordot/GatherV2:output:0+sequential/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: n
$sequential/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
#sequential/dense_5/Tensordot/Prod_1Prod0sequential/dense_5/Tensordot/GatherV2_1:output:0-sequential/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: j
(sequential/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#sequential/dense_5/Tensordot/concatConcatV2*sequential/dense_5/Tensordot/free:output:0*sequential/dense_5/Tensordot/axes:output:01sequential/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
"sequential/dense_5/Tensordot/stackPack*sequential/dense_5/Tensordot/Prod:output:0,sequential/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
&sequential/dense_5/Tensordot/transpose	Transpose%sequential/dense_4/Relu:activations:0,sequential/dense_5/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������@�
$sequential/dense_5/Tensordot/ReshapeReshape*sequential/dense_5/Tensordot/transpose:y:0+sequential/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
#sequential/dense_5/Tensordot/MatMulMatMul-sequential/dense_5/Tensordot/Reshape:output:03sequential/dense_5/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������o
$sequential/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�l
*sequential/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential/dense_5/Tensordot/concat_1ConcatV2.sequential/dense_5/Tensordot/GatherV2:output:0-sequential/dense_5/Tensordot/Const_2:output:03sequential/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
sequential/dense_5/TensordotReshape-sequential/dense_5/Tensordot/MatMul:product:0.sequential/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
)sequential/dense_5/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_5_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential/dense_5/BiasAddBiasAdd%sequential/dense_5/Tensordot:output:01sequential/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������z
dropout_1/IdentityIdentity#sequential/dense_5/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
add_1AddV2'layer_normalization/batchnorm/add_1:z:0dropout_1/Identity:output:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMean	add_1:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������}
IdentityIdentity)layer_normalization_1/batchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp7^multi_head_self_attention/dense/BiasAdd/ReadVariableOp9^multi_head_self_attention/dense/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_1/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_2/Tensordot/ReadVariableOp9^multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp;^multi_head_self_attention/dense_3/Tensordot/ReadVariableOp*^sequential/dense_4/BiasAdd/ReadVariableOp,^sequential/dense_4/Tensordot/ReadVariableOp*^sequential/dense_5/BiasAdd/ReadVariableOp,^sequential/dense_5/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2p
6multi_head_self_attention/dense/BiasAdd/ReadVariableOp6multi_head_self_attention/dense/BiasAdd/ReadVariableOp2t
8multi_head_self_attention/dense/Tensordot/ReadVariableOp8multi_head_self_attention/dense/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_1/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp:multi_head_self_attention/dense_1/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_2/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp:multi_head_self_attention/dense_2/Tensordot/ReadVariableOp2t
8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp8multi_head_self_attention/dense_3/BiasAdd/ReadVariableOp2x
:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp:multi_head_self_attention/dense_3/Tensordot/ReadVariableOp2V
)sequential/dense_4/BiasAdd/ReadVariableOp)sequential/dense_4/BiasAdd/ReadVariableOp2Z
+sequential/dense_4/Tensordot/ReadVariableOp+sequential/dense_4/Tensordot/ReadVariableOp2V
)sequential/dense_5/BiasAdd/ReadVariableOp)sequential/dense_5/BiasAdd/ReadVariableOp2Z
+sequential/dense_5/Tensordot/ReadVariableOp+sequential/dense_5/Tensordot/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs"�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������;
dense_80
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	token_emb
pos_emb"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!att
"ffn
#
layernorm1
$
layernorm2
%dropout1
&dropout2"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_random_generator"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses
J_random_generator"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
�
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
:18
;19
B20
C21
Q22
R23"
trackable_list_wrapper
�
S0
T1
U2
V3
W4
X5
Y6
Z7
[8
\9
]10
^11
_12
`13
a14
b15
c16
d17
:18
;19
B20
C21
Q22
R23"
trackable_list_wrapper
 "
trackable_list_wrapper
�
enon_trainable_variables

flayers
gmetrics
hlayer_regularization_losses
ilayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
jtrace_0
ktrace_1
ltrace_2
mtrace_32�
%__inference_model_layer_call_fn_10604
%__inference_model_layer_call_fn_11527
%__inference_model_layer_call_fn_11580
%__inference_model_layer_call_fn_11259�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0zktrace_1zltrace_2zmtrace_3
�
ntrace_0
otrace_1
ptrace_2
qtrace_32�
@__inference_model_layer_call_and_return_conditional_losses_12093
@__inference_model_layer_call_and_return_conditional_losses_12648
@__inference_model_layer_call_and_return_conditional_losses_11336
@__inference_model_layer_call_and_return_conditional_losses_11413�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zntrace_0zotrace_1zptrace_2zqtrace_3
�B�
__inference__wrapped_model_9948input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_rate:m�;m�Bm�Cm�Qm�Rm�Sm�Tm�Um�Vm�Wm�Xm�Ym�Zm�[m�\m�]m�^m�_m�`m�am�bm�cm�dm�:v�;v�Bv�Cv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�Xv�Yv�Zv�[v�\v�]v�^v�_v�`v�av�bv�cv�dv�"
	optimizer
,
wserving_default"
signature_map
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
}trace_02�
<__inference_token_and_position_embedding_layer_call_fn_12657�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z}trace_0
�
~trace_02�
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_12681�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z~trace_0
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
S
embeddings"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
T
embeddings"
_tf_keras_layer
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15"
trackable_list_wrapper
�
U0
V1
W2
X3
Y4
Z5
[6
\7
]8
^9
_10
`11
a12
b13
c14
d15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
1__inference_transformer_block_layer_call_fn_12718
1__inference_transformer_block_layer_call_fn_12755�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
L__inference_transformer_block_layer_call_and_return_conditional_losses_12999
L__inference_transformer_block_layer_call_and_return_conditional_losses_13257�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�query_dense
�	key_dense
�value_dense
�combine_heads"
_tf_keras_layer
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	agamma
bbeta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	cgamma
dbeta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_global_average_pooling1d_layer_call_fn_13262�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13268�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_2_layer_call_fn_13273
)__inference_dropout_2_layer_call_fn_13278�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_2_layer_call_and_return_conditional_losses_13283
D__inference_dropout_2_layer_call_and_return_conditional_losses_13295�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_6_layer_call_fn_13304�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_6_layer_call_and_return_conditional_losses_13315�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:	�@2dense_6/kernel
:@2dense_6/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_7_layer_call_fn_13324�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_7_layer_call_and_return_conditional_losses_13335�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :@2dense_7/kernel
:2dense_7/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
)__inference_dropout_3_layer_call_fn_13340
)__inference_dropout_3_layer_call_fn_13345�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
D__inference_dropout_3_layer_call_and_return_conditional_losses_13350
D__inference_dropout_3_layer_call_and_return_conditional_losses_13362�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_8_layer_call_fn_13371�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_8_layer_call_and_return_conditional_losses_13382�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_8/kernel
:2dense_8/bias
E:C
��21token_and_position_embedding/embedding/embeddings
F:D	�23token_and_position_embedding/embedding_1/embeddings
L:J
��28transformer_block/multi_head_self_attention/dense/kernel
E:C�26transformer_block/multi_head_self_attention/dense/bias
N:L
��2:transformer_block/multi_head_self_attention/dense_1/kernel
G:E�28transformer_block/multi_head_self_attention/dense_1/bias
N:L
��2:transformer_block/multi_head_self_attention/dense_2/kernel
G:E�28transformer_block/multi_head_self_attention/dense_2/bias
N:L
��2:transformer_block/multi_head_self_attention/dense_3/kernel
G:E�28transformer_block/multi_head_self_attention/dense_3/bias
!:	�@2dense_4/kernel
:@2dense_4/bias
!:	@�2dense_5/kernel
:�2dense_5/bias
::8�2+transformer_block/layer_normalization/gamma
9:7�2*transformer_block/layer_normalization/beta
<::�2-transformer_block/layer_normalization_1/gamma
;:9�2,transformer_block/layer_normalization_1/beta
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_model_layer_call_fn_10604input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_11527inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_11580inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
%__inference_model_layer_call_fn_11259input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_12093inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_12648inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_11336input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_model_layer_call_and_return_conditional_losses_11413input_1"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
#__inference_signature_wrapper_11474input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
<__inference_token_and_position_embedding_layer_call_fn_12657x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_12681x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
S0"
trackable_list_wrapper
'
S0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
T0"
trackable_list_wrapper
'
T0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
J
!0
"1
#2
$3
%4
&5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_transformer_block_layer_call_fn_12718inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_transformer_block_layer_call_fn_12755inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_transformer_block_layer_call_and_return_conditional_losses_12999inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_transformer_block_layer_call_and_return_conditional_losses_13257inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
X
U0
V1
W2
X3
Y4
Z5
[6
\7"
trackable_list_wrapper
X
U0
V1
W2
X3
Y4
Z5
[6
\7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ukernel
Vbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Wkernel
Xbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ykernel
Zbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

[kernel
\bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

_kernel
`bias"
_tf_keras_layer
<
]0
^1
_2
`3"
trackable_list_wrapper
<
]0
^1
_2
`3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
*__inference_sequential_layer_call_fn_10040
*__inference_sequential_layer_call_fn_13395
*__inference_sequential_layer_call_fn_13408
*__inference_sequential_layer_call_fn_10113�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
E__inference_sequential_layer_call_and_return_conditional_losses_13465
E__inference_sequential_layer_call_and_return_conditional_losses_13522
E__inference_sequential_layer_call_and_return_conditional_losses_10127
E__inference_sequential_layer_call_and_return_conditional_losses_10141�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
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
�B�
8__inference_global_average_pooling1d_layer_call_fn_13262inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13268inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_2_layer_call_fn_13273inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_dropout_2_layer_call_fn_13278inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_13283inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dropout_2_layer_call_and_return_conditional_losses_13295inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_6_layer_call_fn_13304inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_6_layer_call_and_return_conditional_losses_13315inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_7_layer_call_fn_13324inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_7_layer_call_and_return_conditional_losses_13335inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
)__inference_dropout_3_layer_call_fn_13340inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
)__inference_dropout_3_layer_call_fn_13345inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dropout_3_layer_call_and_return_conditional_losses_13350inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dropout_3_layer_call_and_return_conditional_losses_13362inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_8_layer_call_fn_13371inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_8_layer_call_and_return_conditional_losses_13382inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
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
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_13531�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_13562�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
_0
`1"
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_5_layer_call_fn_13571�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_5_layer_call_and_return_conditional_losses_13601�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_10040dense_4_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_13395inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_13408inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_10113dense_4_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_13465inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_13522inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_10127dense_4_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_10141dense_4_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
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
�B�
'__inference_dense_4_layer_call_fn_13531inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_13562inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
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
�B�
'__inference_dense_5_layer_call_fn_13571inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_5_layer_call_and_return_conditional_losses_13601inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
&:$	�@2Adam/dense_6/kernel/m
:@2Adam/dense_6/bias/m
%:#@2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
%:#2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
J:H
��28Adam/token_and_position_embedding/embedding/embeddings/m
K:I	�2:Adam/token_and_position_embedding/embedding_1/embeddings/m
Q:O
��2?Adam/transformer_block/multi_head_self_attention/dense/kernel/m
J:H�2=Adam/transformer_block/multi_head_self_attention/dense/bias/m
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/m
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_1/bias/m
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/m
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_2/bias/m
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/m
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_3/bias/m
&:$	�@2Adam/dense_4/kernel/m
:@2Adam/dense_4/bias/m
&:$	@�2Adam/dense_5/kernel/m
 :�2Adam/dense_5/bias/m
?:=�22Adam/transformer_block/layer_normalization/gamma/m
>:<�21Adam/transformer_block/layer_normalization/beta/m
A:?�24Adam/transformer_block/layer_normalization_1/gamma/m
@:>�23Adam/transformer_block/layer_normalization_1/beta/m
&:$	�@2Adam/dense_6/kernel/v
:@2Adam/dense_6/bias/v
%:#@2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
%:#2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/v
J:H
��28Adam/token_and_position_embedding/embedding/embeddings/v
K:I	�2:Adam/token_and_position_embedding/embedding_1/embeddings/v
Q:O
��2?Adam/transformer_block/multi_head_self_attention/dense/kernel/v
J:H�2=Adam/transformer_block/multi_head_self_attention/dense/bias/v
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_1/kernel/v
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_1/bias/v
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_2/kernel/v
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_2/bias/v
S:Q
��2AAdam/transformer_block/multi_head_self_attention/dense_3/kernel/v
L:J�2?Adam/transformer_block/multi_head_self_attention/dense_3/bias/v
&:$	�@2Adam/dense_4/kernel/v
:@2Adam/dense_4/bias/v
&:$	@�2Adam/dense_5/kernel/v
 :�2Adam/dense_5/bias/v
?:=�22Adam/transformer_block/layer_normalization/gamma/v
>:<�21Adam/transformer_block/layer_normalization/beta/v
A:?�24Adam/transformer_block/layer_normalization_1/gamma/v
@:>�23Adam/transformer_block/layer_normalization_1/beta/v�
__inference__wrapped_model_9948TSUVWXYZ[\ab]^_`cd:;BCQR0�-
&�#
!�
input_1���������
� "1�.
,
dense_8!�
dense_8����������
B__inference_dense_4_layer_call_and_return_conditional_losses_13562e]^4�1
*�'
%�"
inputs����������
� ")�&
�
0���������@
� �
'__inference_dense_4_layer_call_fn_13531X]^4�1
*�'
%�"
inputs����������
� "����������@�
B__inference_dense_5_layer_call_and_return_conditional_losses_13601e_`3�0
)�&
$�!
inputs���������@
� "*�'
 �
0����������
� �
'__inference_dense_5_layer_call_fn_13571X_`3�0
)�&
$�!
inputs���������@
� "������������
B__inference_dense_6_layer_call_and_return_conditional_losses_13315]:;0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� {
'__inference_dense_6_layer_call_fn_13304P:;0�-
&�#
!�
inputs����������
� "����������@�
B__inference_dense_7_layer_call_and_return_conditional_losses_13335\BC/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� z
'__inference_dense_7_layer_call_fn_13324OBC/�,
%�"
 �
inputs���������@
� "�����������
B__inference_dense_8_layer_call_and_return_conditional_losses_13382\QR/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� z
'__inference_dense_8_layer_call_fn_13371OQR/�,
%�"
 �
inputs���������
� "�����������
D__inference_dropout_2_layer_call_and_return_conditional_losses_13283^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
D__inference_dropout_2_layer_call_and_return_conditional_losses_13295^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� ~
)__inference_dropout_2_layer_call_fn_13273Q4�1
*�'
!�
inputs����������
p 
� "�����������~
)__inference_dropout_2_layer_call_fn_13278Q4�1
*�'
!�
inputs����������
p
� "������������
D__inference_dropout_3_layer_call_and_return_conditional_losses_13350\3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
D__inference_dropout_3_layer_call_and_return_conditional_losses_13362\3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� |
)__inference_dropout_3_layer_call_fn_13340O3�0
)�&
 �
inputs���������
p 
� "����������|
)__inference_dropout_3_layer_call_fn_13345O3�0
)�&
 �
inputs���������
p
� "�����������
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_13268{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
8__inference_global_average_pooling1d_layer_call_fn_13262nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
@__inference_model_layer_call_and_return_conditional_losses_11336{TSUVWXYZ[\ab]^_`cd:;BCQR8�5
.�+
!�
input_1���������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_11413{TSUVWXYZ[\ab]^_`cd:;BCQR8�5
.�+
!�
input_1���������
p

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_12093zTSUVWXYZ[\ab]^_`cd:;BCQR7�4
-�*
 �
inputs���������
p 

 
� "%�"
�
0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_12648zTSUVWXYZ[\ab]^_`cd:;BCQR7�4
-�*
 �
inputs���������
p

 
� "%�"
�
0���������
� �
%__inference_model_layer_call_fn_10604nTSUVWXYZ[\ab]^_`cd:;BCQR8�5
.�+
!�
input_1���������
p 

 
� "�����������
%__inference_model_layer_call_fn_11259nTSUVWXYZ[\ab]^_`cd:;BCQR8�5
.�+
!�
input_1���������
p

 
� "�����������
%__inference_model_layer_call_fn_11527mTSUVWXYZ[\ab]^_`cd:;BCQR7�4
-�*
 �
inputs���������
p 

 
� "�����������
%__inference_model_layer_call_fn_11580mTSUVWXYZ[\ab]^_`cd:;BCQR7�4
-�*
 �
inputs���������
p

 
� "�����������
E__inference_sequential_layer_call_and_return_conditional_losses_10127w]^_`C�@
9�6
,�)
dense_4_input����������
p 

 
� "*�'
 �
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_10141w]^_`C�@
9�6
,�)
dense_4_input����������
p

 
� "*�'
 �
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_13465p]^_`<�9
2�/
%�"
inputs����������
p 

 
� "*�'
 �
0����������
� �
E__inference_sequential_layer_call_and_return_conditional_losses_13522p]^_`<�9
2�/
%�"
inputs����������
p

 
� "*�'
 �
0����������
� �
*__inference_sequential_layer_call_fn_10040j]^_`C�@
9�6
,�)
dense_4_input����������
p 

 
� "������������
*__inference_sequential_layer_call_fn_10113j]^_`C�@
9�6
,�)
dense_4_input����������
p

 
� "������������
*__inference_sequential_layer_call_fn_13395c]^_`<�9
2�/
%�"
inputs����������
p 

 
� "������������
*__inference_sequential_layer_call_fn_13408c]^_`<�9
2�/
%�"
inputs����������
p

 
� "������������
#__inference_signature_wrapper_11474�TSUVWXYZ[\ab]^_`cd:;BCQR;�8
� 
1�.
,
input_1!�
input_1���������"1�.
,
dense_8!�
dense_8����������
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_12681\TS*�'
 �
�
x���������
� "*�'
 �
0����������
� �
<__inference_token_and_position_embedding_layer_call_fn_12657OTS*�'
 �
�
x���������
� "������������
L__inference_transformer_block_layer_call_and_return_conditional_losses_12999xUVWXYZ[\ab]^_`cd8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
L__inference_transformer_block_layer_call_and_return_conditional_losses_13257xUVWXYZ[\ab]^_`cd8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
1__inference_transformer_block_layer_call_fn_12718kUVWXYZ[\ab]^_`cd8�5
.�+
%�"
inputs����������
p 
� "������������
1__inference_transformer_block_layer_call_fn_12755kUVWXYZ[\ab]^_`cd8�5
.�+
%�"
inputs����������
p
� "�����������
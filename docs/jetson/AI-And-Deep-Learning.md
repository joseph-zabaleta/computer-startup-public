# AI And Deep Learning

## Differences between AI, ML, & DL
Artifical intelligence (AI) is the future, science fiction, and already a part of our daily lives. This all depends on which type of AI we are talking about.

![AI Timeline](https://dli-lms.s3.amazonaws.com/data/c-rx-02/images/ai-ml-dl.png)

`Artifical Intelligence` - Human intelligence exhibited by machines.  

`Machine Learning` - An approach to achieve artificial intelligence.
- A branch of AI that generalize and classifies images based on experience in the forms of lots of example data.

`Deep Learning` - A technique for implementing machine learning.


## Deep Learning Models

`Deep learning` uses deep nural network models to recognize relevant patterns in an image dataset.

![Deep Learning](https://blogs.nvidia.com/wp-content/uploads/2016/08/ai_difference_between_deep_learning_training_inference.jpg)

- `weights` are internal parameters in a neural network configured to map inputs to outputs.
  - In `Image Classification` the inputs are the pixels and the outputs are the possible categories.
- `classes` are the possible categories of an output that a model is trained to recognize.
- `inference` is running live data on a trained model to provide results in real time.
- `epochs` are additional passes through a given data set to improve a model's performance.

## Convolutional Neural Networks (CNNs)

`Deep learning` relies on CNN models to transform images into predicted classifications. CNN is a class of `artificial neural network` that uses convolutional layers to filter inputs for useful information.

### Artificial Neural Network
- `artificial neural network` is a biologically inspired computational model that is patterned after the network of neurons presented in the human brain.  

### Convolutions
CNNs for image classification are generally composed of:
- an input layer 
  - the image
- a series of hidden layers for feature extraction
  - the convolutions
- a fully connected output layer
  - the classification

As the model trains, CNN will automatically find the most relevant features based on its classification requirements.

### Accelerating CNNs Using GPUs
Some `Deep learning` frameworks are optimized to run faster on GPUs taking full advantage of the parallel processing capabilities of GPUs which speed up training and inference tasks.

![Deep Learning Frameworks](https://developer.nvidia.com/sites/default/files/dlsdk_cuda_frameworks.png)

## References
- [Jetson AI Certification Program by NVIDIA](https://developer.nvidia.com/embedded/learn/jetson-ai-certification-programs#course_outline)
- [Jetson Nano Performance](https://developer.nvidia.com/blog/jetson-nano-ai-computing/)
- [Transfer Learning](https://blogs.nvidia.com/blog/2019/02/07/what-is-transfer-learning/)
- [Convolution a Mathematical Operation](https://developer.nvidia.com/discover/convolution)
- [Convolutional Neural Network (CNN)](https://developer.nvidia.com/discover/convolutional-neural-network)
- [Artificial Neural Network](https://developer.nvidia.com/discover/artificial-neural-network)
- [Deep Learning](https://developer.nvidia.com/deep-learning)
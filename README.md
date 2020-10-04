# PolicyQA

Source code for our work, `PolicyQA: A Reading Comprehension Dataset for Privacy Policies`. [[paper](https://wasiahmad.github.io/files/publications/2020/policyqa.pdf)]

**NOTE**: We use our own implementation during development. However, in this repository, we share source code on 
fine-tuning BERT based on the Hugginface [transformers](https://github.com/huggingface/transformers) API.

#### Fine-tuning BERT on PolicyQA

```
$ bash run.sh
```

Training with the defined hyper-parameters as in `run.sh` yields the following results:

```
*Validation*
f1 = 59.2
exact_match = 31.0

*test*
f1 = 55.3
exact_match = 27.6
```


#### Citation

```
@article{ahmad2020policyqa,
    author = {Ahmad, Wasi Uddin and Chi, Jianfeng and Tian, Yuan and Chang, Kai-Wei},
    booktitle = {In Findings of EMNLP},
    title = {PolicyQA: A Reading Comprehension Dataset for Privacy Policies},
    year = {2020}
}
```
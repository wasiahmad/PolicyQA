# PolicyQA

Source code for our work, `PolicyQA: A Reading Comprehension Dataset for Privacy Policies`. [[paper](https://www.aclweb.org/anthology/2020.findings-emnlp.66/)]

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
@inproceedings{ahmad-etal-2020-policyqa,
    title = "{P}olicy{QA}: A Reading Comprehension Dataset for Privacy Policies",
    author = "Ahmad, Wasi  and
      Chi, Jianfeng  and
      Tian, Yuan  and
      Chang, Kai-Wei",
    booktitle = "Findings of the Association for Computational Linguistics: EMNLP 2020",
    month = nov,
    year = "2020",
    address = "Online",
    publisher = "Association for Computational Linguistics",
    url = "https://www.aclweb.org/anthology/2020.findings-emnlp.66",
    pages = "743--749"
}
```

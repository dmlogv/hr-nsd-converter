# hr-nsd-converter

NSD ETL example


## Problem
1. Load a bunch of `*.xlsx`.
1. Examine stocks data.
1. Denormalize it.
1. Implement a date slicing.
1. Put to JSON.


## Implementation details
- Of course, I `docker`'ize that all.
- I use `openpyxl` and `pandas` to read and parse files using some settings from `datasources.yml`
- Then I use `sqlalchemy` to manage with dataframes' schema and push it to the `postgresql` stage.
- After all, I make denormalized sources.
- And at the final step I provide a customizable `json`-output.


## I/O formats

### Inputs
Put your `xlsx` files deep inside to `./data` folder.

### Outputs
You'll got some `json` files in the `./output` in the following format (possibly):

REST-style:

```json
{
  "status": "ok",
  "sliceDate": "2021-04-01",
  "data": [
    {"company": "Vezet Group", ...},
    {"company":  "NSD", ...},
    ...
  ]
}
```

or in JSONEachRow style:
```json
{"company": "Vezet Group", ...},
{"company":  "NSD", ...},
...
```


## Usage

## Workarounds

- Dynamic sources based on files in the specific directory.
- Table schema is determined by `pandas` and `sqlalchemy`.
- Disabled DB security.

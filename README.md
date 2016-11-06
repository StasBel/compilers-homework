# simple-compiler

Implementing a simple language.
What we have so far:

                                  | Intrepreter | Stack Machine | x86 |
--------------------------------- | ----------- | ------------- | --- |
binops                            | [x]         | [x]           | [x] |
if/while/for/repeat control flows | [x]         | [x]           | [x] |
funcs                             | [x]         | [x]           | [ ] |

# TODO

- [ ] переписать !! and && в x86 для ускорения
- [ ] избавиться от второго аругмента в call на стадии fdefs (?)
- [ ] чистить стэк после вызова функции как процедуры
- [ ] HashMap вместо Map (?)
- [ ] сделать рефакторинг
- [ ] перепройти все тесты
- [ ] переделать функции в SM и Int правильно? и с классами env

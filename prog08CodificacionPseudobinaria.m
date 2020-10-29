clc;
clear all;
close all;

[codigo1] = codifPseudoBinaria(0, 255);
[codigo2] = codifPseudoBinaria(0, -345);
[codigo3] = codifPseudoBinaria(-1245, 1245);
[codigo4] = codifPseudoBinaria(0, 0.12342789433);

[codigo1a] = codifPseudoBinaria(0, 224.999999999);
[codigo2a] = codifPseudoBinaria(0, -344.999999999);
[codigo3a] = codifPseudoBinaria(-1244.999999999, 1244.999999999);

imprimirCodifPseudoBinaria(codigo1);
imprimirCodifPseudoBinaria(codigo2);
imprimirCodifPseudoBinaria(codigo3);
imprimirCodifPseudoBinaria(codigo4);
imprimirCodifPseudoBinaria(codigo1a);
imprimirCodifPseudoBinaria(codigo2a);
imprimirCodifPseudoBinaria(codigo3a);
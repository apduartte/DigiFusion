O **método `calcularDespesas`** deve ser criado dentro da **classe principal** ou em uma classe utilitária separada, dependendo de como você organiza seu projeto. Aqui estão duas abordagens comuns:

---

### **1. Criar o método `calcularDespesas` na classe principal**
- Essa é a abordagem mais simples e direta.
- O método será definido na mesma classe que contém o método `main`, garantindo que ele esteja acessível para processar os dados.

#### Exemplo:
```java
public class CalculoDespesas {

    public static List<ResultadoDTO> calcularDespesas(List<CnpjInfoDTO> registros) {
        List<ResultadoDTO> resultados = new ArrayList<>();

        for (CnpjInfoDTO registro : registros) {
            String cnpj = registro.getCnpj();

            if (!cnpj.endsWith("0001")) {
                cnpj = ajustarCnpj(cnpj);
            }

            if (registro.getDespesas() <= 0) {
                resultados.add(new ResultadoDTO(cnpj, registro.getComissao()));
                continue;
            }

            double despesas = registro.getDespesas();
            double comissao = registro.getComissao();

            if (despesas <= comissao) {
                double resultado = comissao - despesas;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            } else if (comissao >= despesas) {
                double resultado = comissao - despesas;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            } else if (despesas > comissao) {
                double resultado = despesas - comissao;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            }
        }

        return resultados;
    }

    private static String ajustarCnpj(String cnpj) {
        return cnpj.substring(0, cnpj.length() - 4) + "0001";
    }

    public static void main(String[] args) {
        List<CnpjInfoDTO> registros = new ArrayList<>();
        registros.add(new CnpjInfoDTO("12.345.678/0001-90", 5000.0, 3000.0));
        registros.add(new CnpjInfoDTO("12.345.678/0002-90", 2000.0, 4000.0));
        registros.add(new CnpjInfoDTO("12.345.678/0003-90", 0, 1500.0));

        List<ResultadoDTO> resultados = calcularDespesas(registros);

        System.out.println("Resultados:");
        for (ResultadoDTO resultado : resultados) {
            System.out.println(resultado);
        }
    }
}
```

---

### **2. Criar o método `calcularDespesas` em uma classe utilitária**
- Essa abordagem é útil para projetos maiores, onde você deseja manter a lógica de cálculo separada da lógica principal.
- A lógica do cálculo será movida para uma nova classe, por exemplo, `DespesasUtils`.

#### **Classe `DespesasUtils`**
```java
import java.util.ArrayList;
import java.util.List;

public class DespesasUtils {

    public static List<ResultadoDTO> calcularDespesas(List<CnpjInfoDTO> registros) {
        List<ResultadoDTO> resultados = new ArrayList<>();

        for (CnpjInfoDTO registro : registros) {
            String cnpj = registro.getCnpj();

            if (!cnpj.endsWith("0001")) {
                cnpj = ajustarCnpj(cnpj);
            }

            if (registro.getDespesas() <= 0) {
                resultados.add(new ResultadoDTO(cnpj, registro.getComissao()));
                continue;
            }

            double despesas = registro.getDespesas();
            double comissao = registro.getComissao();

            if (despesas <= comissao) {
                double resultado = comissao - despesas;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            } else if (comissao >= despesas) {
                double resultado = comissao - despesas;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            } else if (despesas > comissao) {
                double resultado = despesas - comissao;
                resultados.add(new ResultadoDTO(cnpj, resultado));
            }
        }

        return resultados;
    }

    private static String ajustarCnpj(String cnpj) {
        return cnpj.substring(0, cnpj.length() - 4) + "0001";
    }
}
```

#### **Classe Principal (`CalculoDespesas`)**
```java
import java.util.List;

public class CalculoDespesas {

    public static void main(String[] args) {
        List<CnpjInfoDTO> registros = new ArrayList<>();
        registros.add(new CnpjInfoDTO("12.345.678/0001-90", 5000.0, 3000.0));
        registros.add(new CnpjInfoDTO("12.345.678/0002-90", 2000.0, 4000.0));
        registros.add(new CnpjInfoDTO("12.345.678/0003-90", 0, 1500.0));

        // Chama o método da classe utilitária
        List<ResultadoDTO> resultados = DespesasUtils.calcularDespesas(registros);

        System.out.println("Resultados:");
        for (ResultadoDTO resultado : resultados) {
            System.out.println(resultado);
        }
    }
}
```

---

### **Quando usar cada abordagem?**
- **Classe Principal:**
  - Útil para projetos pequenos ou para experimentação/testes.
  - Simples e direta, com menor sobrecarga.

- **Classe Utilitária:**
  - Ideal para projetos maiores ou quando a lógica de cálculo será reutilizada em diferentes partes do sistema.
  - Ajuda a manter o código mais modular e organizado.

Se precisar de mais explicações ou ajustes, é só perguntar! 😊
//Definições das variáveis
  public class ImobiliariaController 
{ public integer quartos {get;set;}
  public integer sala {get;set;}
  public integer cozinha {get;set;}
  public integer banheiro {get;set;}
  public integer suite {get;set;}
  public integer copa {get;set;}
  public integer garagem {get;set;}
  public integer valor {get;set;}
  public String tipoImovel {get;set;}
 
 //Método Piclist
 public List<SelectOption> getMinhasOpcoes()
 { //Mapear o campo de lista de seleção/picklist que deseja listar
     Schema.DescribeFieldResult describeResult = Imoveis__c.TipoImovel__c.getDescribe();
     //Listar as opções válidas dentro do campo
     List<Schema.PicklistEntry> entries = describeResult.getPickListValues();
     //Criar variável de retorno do tipo de lista para o objeto SelectOption
     List<SelectOption> optionsToReturn =  new List<SelectOption>();
     //Adiciona as opções do campo listadas
     for(Schema.PicklistEntry pEntry : entries)
     {//Se a opção está ativa. Ou pode-se aplicar o filtro necessário para mostrar opções específicas
         if(pEntry.isActive())
         {//Adcionar nome e valor da variável de retorno
             optionsToReturn.add(new SelectOption(pEntry.getValue(), pEntry.getLabel()));           
         }           
     }
     //REtorna a lista selectOption. Criando variável de retorno
     return optionsToReturn;
 }
 
 //Método Salvar
 public void salvarImoveis()
 { Imoveis__c objImoveis = new Imoveis__c(); // Objeto do tipo Imóveis
   objImoveis.Quartos__c = quartos;
   objImoveis.Sala__c = sala;
   objImoveis.Cozinha__c = cozinha;
   objImoveis.Banheiro__c = banheiro;
   objImoveis.Suite__c = suite;
   objImoveis.Copa__c = copa;
   objImoveis.Garagem__c = garagem;
   objImoveis.Valor__c = valor;
   objImoveis.TipoImovel__c = tipoImovel;
   
  try{if(objImoveis.TipoImovel__c != 'Nenhum' && objImoveis.TipoImovel__c != null)
       {ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM, 'Imóvel cadastrado com sucesso!'));
           insert objImoveis;
        //Limpa os campos após salvar
           quartos = null;
           sala = null;
           cozinha = null;
           banheiro = null;
           suite = null;
           copa = null;
           garagem = null;
           valor = null;
           tipoImovel = null;       
       }
      else{ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'O tipo do imóvel precisa ser preenchido!'));}     
     }
  catch(DmlException e){ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'Por favor verifique todos os campos antes de salvar!'));}  
 }       
}
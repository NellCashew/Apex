<apex:page controller="ImobiliariaController">    
<!-- Definições de estilo CSS -->   
<style>
    #conteudo {margin-top:13%;margin-left:10%;margin-right:10%;}
    #form1 {width:500px;}   
</style>
<div class="slds-brand-band slds-brand-band_medium slds-brand-band_group"></div>
<!-- Início do conteúdo -->
<apex:slds /> <!-- Chamada para SLDS -->
<div id="conteudo">
    <center>     
        <div id="form1" class="slds-escope">                  
            <articlec class="slds-card">
                <div class="slds-card__header"> <!-- CABEÇALHO -->
                    <h2 class="slds-card__header">
                        <span><b>CADASTRO DE IMÓVEIS</b></span>               
                    </h2>
                </div>
                <div class="slds-card__body slds-card__body_inner slds-form-element__control"> <!-- Conteúdo do Artigo -->
                    <apex:form >
                        <!-- MENSAGEM DA TELA -->
                        <apex:pageMessages id="showmessage"></apex:pageMessages>
                        
                        <table class="slds-table slds-table_bordered">
                            <thead>
                                <tr>
                                    <th scope="col">
                                        <div class="slds-truncate" title="Itens"> ITENS </div>                                           
                                    </th> 
                                    <th scope="col">
                                        <div class="slds-truncate" title="Quantidade"> QUANTIDADE </div>                                           
                                    </th>
                                </tr> 
                            </thead>  
                            <tbody>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Quartos" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Quartos">
                                            <label class="slds-form-element__label">Quartos</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Quartos"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Quartos">
                                            <apex:inputText value="{!quartos}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>  
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Sala" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Sala">
                                            <label class="slds-form-element__label">Sala</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Sala"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Sala">
                                            <apex:inputText value="{!sala}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Cozinha" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Cozinha">
                                            <label class="slds-form-element__label">Cozinha</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Cozinha"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Cozinha">
                                            <apex:inputText value="{!cozinha}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr> 
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Banheiro" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Banheiro">
                                            <label class="slds-form-element__label">Banheiro</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Banheiro"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Banheiro">
                                            <apex:inputText value="{!banheiro}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Suite" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Suite">
                                            <label class="slds-form-element__label">Suite</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Suite"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Suite">
                                            <apex:inputText value="{!suite}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Copa" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Copa">
                                            <label class="slds-form-element__label">Copa</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Copa"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Copa">
                                            <apex:inputText value="{!copa}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>  
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Garagem" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Garagem">
                                            <label class="slds-form-element__label">Garagem</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Garagem"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Garagem">
                                            <apex:inputText value="{!garagem}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Valor" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Valor">
                                            <label class="slds-form-element__label">Valor</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Valor"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Valor">
                                            <apex:inputText value="{!valor}" styleClass="slds-input"/>
                                        </div>
                                    </td>
                                </tr>
                                <tr> <!-- LINHA DA TABELA -->
                                    <th data-label="Tipo do Imóvel" scope="row"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Tipo do Imóvel">
                                            <label class="slds-form-element__label">Tipo do Imóvel</label>  
                                        </div>                                      
                                    </th>
                                    <td data-label="Tipo do Imóvel"> <!-- CÉLULA DA LINHA -->
                                        <div class="slds-truncate" title="Tipo do Imóvel">
                                            <!-- Campo PickList -->
                                            <apex:selectList value="{!tipoImovel}" multiselect="false" size="1" required="true" styleClass="slds-input">
                                                <!-- Chamada para o Método Picklist -->
                                                <apex:selectOptions value="{!MinhasOpcoes}"></apex:selectOptions>                       
                                            </apex:selectList>   
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>                                            
                        <br/>
                        <div class="slds-card__footer">
                            <apex:commandButton value="SALVAR" action="{!salvarImoveis}" styleClass="slds-button slds-button_success"/> 
                        </div>                 
                    </apex:form>  
                </div>                    
            </articlec>               
        </div>  
    </center>
</div> 
</apex:page>
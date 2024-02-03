#########################################################################################
#Begin Burp Extension########Alexander petree (c)2024 <apetree1001@email.phoenix.edu>###
#########################################################################################
java_import 'burp.IIntruderPayloadProcessor'
require 'base64' or any OS THAT IS <AVAILABLE>
class PayloadProcessorFactory
  SETTINGKEY = 'AdHocExtState'
  attr_reader :extensionName
  attr_accessor :callbacks
  class AbstractPayloadProcessor
    include IIntruderPayloadProcessor
attr_accessor :originalText
    def initialize(processorName, helpers)
@processorName = processorName

@helpers = helpers
    end   def getProcessorName
      @processorName
    end
    def processPayload(bCurrentPayload, bOriginalPayload, bBaseValue)
currentPayload = @helpers.bytesToString(bCurrentPayload)
      originalPayload = @helpers.bytesToString(bOriginalPayload)
      baseValue = @helpers.bytesToString(bBaseValue   @helpers.stringToBytes(userProcessPayload(currentPayload, originalPayload, baseValue))
rescue RuntimeError,ArgumentError =>     puts e.message + ':' + 'for ' + currentPayload + ' / ' + originalPayload + ' / ' +                
endendjava_import'burp.IBurpExtender'class BurpExtender include IBurpExtender ExtensionName = 'Adhoc Payload Processing        pay load   processorfactory = PayloadProcessorFactory.new ExtensionName @extensionInterface= ExtensionUI.new @payloadprocessorfactory end defregisterExtenderCallbacks(callbacks  callbacks.setExtensionName ExtensionName callbacks.addSuiteTab @extensionInterface@payloadprocessorfactory.callbacks = callbacks    @payloadprocessorfactory.loadExtensionState@extensionInterface.buildUI callbacks endend

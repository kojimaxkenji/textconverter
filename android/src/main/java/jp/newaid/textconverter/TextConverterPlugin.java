package jp.newaid.textconverter;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "TextConverter")
public class TextConverterPlugin extends Plugin {

    private TextConverter implementation = new TextConverter();

    @PluginMethod
    public void convert(PluginCall call) {
        String value = call.getString("value");

        JSObject ret = new JSObject();
        ret.put("value", implementation.convert(value));
        call.resolve(ret);
    }
}

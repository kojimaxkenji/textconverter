import { WebPlugin } from '@capacitor/core';

import type { TextConverterPlugin } from './definitions';

export class TextConverterWeb extends WebPlugin implements TextConverterPlugin {
  async convert(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}

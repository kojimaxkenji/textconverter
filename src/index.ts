import { registerPlugin } from '@capacitor/core';

import type { TextConverterPlugin } from './definitions';

const TextConverter = registerPlugin<TextConverterPlugin>('TextConverter', {
  web: () => import('./web').then((m) => new m.TextConverterWeb()),
});

export * from './definitions';
export { TextConverter };

declare module '@apiverve/filesizeformatter' {
  export interface filesizeformatterOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface filesizeformatterResponse {
    status: string;
    error: string | null;
    data: FileSizeFormatterData;
    code?: number;
  }


  interface FileSizeFormatterData {
      bytes:       number;
      formatted:   string;
      value:       number;
      unit:        string;
      standard:    string;
      precision:   number;
      conversions: { [key: string]: number };
  }

  export default class filesizeformatterWrapper {
    constructor(options: filesizeformatterOptions);

    execute(callback: (error: any, data: filesizeformatterResponse | null) => void): Promise<filesizeformatterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: filesizeformatterResponse | null) => void): Promise<filesizeformatterResponse>;
    execute(query?: Record<string, any>): Promise<filesizeformatterResponse>;
  }
}

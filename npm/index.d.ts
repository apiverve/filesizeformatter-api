declare module '@apiverve/filesizeformatter' {
  export interface filesizeformatterOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface filesizeformatterResponse {
    status: string;
    error: string | null;
    data: FileSizeFormatterData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface FileSizeFormatterData {
      bytes:       number | null;
      formatted:   null | string;
      value:       number | null;
      unit:        null | string;
      standard:    null | string;
      precision:   number | null;
      conversions: { [key: string]: number | null };
  }

  export default class filesizeformatterWrapper {
    constructor(options: filesizeformatterOptions);

    execute(callback: (error: any, data: filesizeformatterResponse | null) => void): Promise<filesizeformatterResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: filesizeformatterResponse | null) => void): Promise<filesizeformatterResponse>;
    execute(query?: Record<string, any>): Promise<filesizeformatterResponse>;
  }
}

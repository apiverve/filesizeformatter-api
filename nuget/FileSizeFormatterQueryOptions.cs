using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.FileSizeFormatter
{
    /// <summary>
    /// Query options for the File Size Formatter API
    /// </summary>
    public class FileSizeFormatterQueryOptions
    {
        /// <summary>
        /// Number of bytes to format
        /// </summary>
        [JsonProperty("bytes")]
        public string Bytes { get; set; }

        /// <summary>
        /// Specific target unit (optional, auto-selects best unit if not specified)
        /// </summary>
        [JsonProperty("unit")]
        public string Unit { get; set; }

        /// <summary>
        /// Decimal places (0-10)
        /// </summary>
        [JsonProperty("precision")]
        public string Precision { get; set; }

        /// <summary>
        /// Standard to use: binary (1024) or decimal (1000)
        /// </summary>
        [JsonProperty("standard")]
        public string Standard { get; set; }
    }
}

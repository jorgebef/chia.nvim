---@class KanagawaHighlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias KanagawaHighlights table<string,KanagawaHighlight|string>

---@alias KanagawaHighlightsFn fun(colors:KanagawaColors,opts:KanagawaConfig):KanagawaHighlights

---@class KanagawaCache
---@field groups KanagawaHighlights
---@field inputs table

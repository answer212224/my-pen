# My Pen

## 簡介
**My Pen** 是一個基於 Laravel 框架的 Web 應用程式，旨在提供一個線上筆記平台，讓使用者可以方便地創建、編輯和管理個人筆記。此專案包含 Docker 支援，方便在各種環境中部署和運行。

## 功能特性
- **筆記管理**：創建、編輯、刪除和分類筆記。
- **使用者認證**：提供註冊、登入和密碼重設功能。
- **富文本編輯器**：使用者可以在筆記中添加格式、圖片和連結。
- **搜尋功能**：快速搜尋筆記內容。
- **Docker 支援**：透過 Docker 容器化部署，簡化安裝和配置流程。

## 環境需求
- **Docker**：確保已安裝 Docker 以運行容器。
- **Docker Compose**：用於定義和運行多容器 Docker 應用程式。
- **PHP** 8.1 以上。
- **MySQL** 8.0 以上。

## 安裝與設定

### 1. 克隆專案
```bash
git clone https://github.com/answer212224/my-pen.git
cd my-pen
```

### 2. 建立環境設定檔
```bash
cp .env.example .env
```
根據需要修改 `.env` 文件中的資料庫連線資訊和其他設定。

### 3. 啟動 Docker 容器
```bash
docker-compose up -d
```
此命令將啟動應用程式、資料庫和其他必要的服務。

### 4. 執行資料庫遷移
```bash
docker-compose exec app php artisan migrate
```

### 5. 安裝前端相依套件
```bash
docker-compose exec app npm install
```

### 6. 編譯前端資源
```bash
docker-compose exec app npm run build
```

### 7. 訪問應用程式
在瀏覽器中打開 `http://localhost` 即可訪問應用程式。

## 測試
使用 PHPUnit 進行測試：
```bash
docker-compose exec app php artisan test
```

## 貢獻方式
歡迎提交 Pull Request 來改進此專案。在提交前，請確保所有測試均已通過，並遵循項目的代碼風格。

## 授權
此專案採用 MIT 授權。

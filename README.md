# superbitok-tg

Статический сайт экспортирован из Word 2003. Редактировать __ТОЛЬКО__ в Word 2003, остальное не канает!

## Контейнер

Собрать и запустить локально:

```sh
docker build -t superbitok-tg-landing .
docker run --rm -p 8080:8080 superbitok-tg-landing
```

Сайт будет доступен на <http://localhost:8080/>. Образ основан на BusyBox с glibc; исходный `index.htm` и всё содержимое `index_files/` копируются без перекодирования.

При каждом push в `master` GitHub Actions проверяет HTTP-ответы и публикует образ в GHCR с тегом полного SHA коммита:

```sh
docker pull ghcr.io/keroosha/superbitok-tg-landing:<commit-sha>
```

После первой публикации один раз сделайте пакет публичным: откройте пакет в GitHub → **Package settings** → **Danger Zone** → **Change visibility** → **Public**. Публичность репозитория сама по себе не делает пакет доступным для анонимного `docker pull`.
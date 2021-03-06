# ChangeLog
All project updates will be documented in this file

## [Unreleased]
- Updated typings
    - Currently awaiting updated `express-session` typings to update (I believe this will not be until v2 of `express-session` comes out)
    - This will most likely have breaking changes (and thus be v2.0.0)

## [v1.6.1] - 2020-09-28
- Merged PR #28 submitted by @master117
    - Changed result set from `all` method
- Updated packages
    - @types/jest
    - @typescript-eslint/eslint-plugin
    - @typescript-eslint/parser
    - eslint
    - eslint-plugin-import
    - lint-staged
    - mssql
    - prettier
    - typescript

## [v1.6.0] - 2020-09-15
- Merged PR #27 submitted by @master117 (Thanks for the contribution!)
    - Added support for `all` method which pulls all sessions from the table
- Fixed typings for `all` method to indicate it returns an array
- Added test for `all` method
- Updated packages
    - @types/mssql
    - @types/jest
    - jest
    - typescript
    - husky
    - eslint
    - lint-staged
    - prettier

## [v1.5.0] - 2020-08-18
- Updated README
    - Added various badges
    - Added typescript example
    - Added Reporting Issues section
    - Removed MIT license text in favor of link to license file
- Updated package.json
    - @bradtaniguchi added lint script, along with husky/prettier pre-commit hooks
    - Moved `@types/mssql` to devDependencies
    - Updated all packages to latest at time of writing
- Updated ESLint config to include `parserOptions`
- Work started on creating Gitpod environment for dev

## [v1.4.1] - 2020-02-28
- Removed the following types: GetCallback, CommonCallback, LengthCallback, and StoreError. 
    - Replaced with generic in place typings (i.e `(err?: any) => void`)
- Updated README to include note on typings and contributors
- Updated all packages

## [v1.4.0] - 2020-02-03
- Modified most methods to first check if callback exists before calling it (fix #11)
- Refactored to remove `.call` and `.bind` in most places
- Updated all packages

## [v1.3.0] - 2019-12-17
- Changed sessionError event listener from using `on` to `once`
    - Should no longer attach multiples of the same listener
- Refactored to use optional chaining
- Refactored `return callback(error)` to `throw error` 

## [v1.2.0] - 2019-12-06
- Added sessionError event listener
    - Emits error and method in which error occured
- Check for callback existence before calling

## [v1.1.1] - 2019-12-05
- Migrate from TSLint to ESLint and re-lint files

## [v1.1.0] - 2019-11-22
- Typings updated [bf08351]
    - data property changed to session, use Express.SessionData type
    - cast session argument
- Ensure we do not send boolean into expires Date constructor (set and touch methods)

## [v1.0.3] - 2019-11-21
- Changed database initialization to only occur on first connect OR if disconnected
    - Connect event only emits once (unless disconnected and needs to reconnect)
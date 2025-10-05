AGENTS — Agent Guidelines

Build & test
- Bootstrap (if needed): `autoreconf -i`
- Configure & build: `./configure && make`
- Run all tests: `make -C tests check` or `cd tests && ./runtest.sh`
- Run a single test: `cd tests && ./runtest.sh <test-name>`
- Run binary directly: `./html2text -rcfile tests/.html2textrc -nobs < input.html`

Minimal code-style for agents
- Keep changes tiny: prefer the smallest patch that fixes the root cause.
- Follow existing style: match local includes, naming, and indentation.
- Use existing APIs: prefer changing one file over introducing new helpers.
- C++ rules: prefer `std::string`/`std::vector`, avoid adding new dependencies.
- Avoid long refactors and new public APIs unless requested.

Notes for automation
- No Copilot/Cursor rules found in repo; add them in `.github/` or `.cursor/` if needed.
- Tests are shell-driven in `tests/runtest.sh`; mirror test patterns when adding tests.
- If you add files, include a short commit message explaining *why* the change was made.

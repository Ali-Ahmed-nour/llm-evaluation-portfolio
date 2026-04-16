# ==============================================================================
# SOVEREIGN COMMAND ORCHESTRATOR (2026) - STIE Justfile
# Identity: Ali Ahmed Noureldin (Principal Architect)
# Rationale: Unified entry points for environment, quality, and documentation.
# ==============================================================================

# List all available commands (The Architecture Menu)
default:
    @just --list

# --------------------------------------------------
# CLUSTER: FOUNDATION (Environment & Setup)
# --------------------------------------------------

# Setup the environment, install dependencies and pre-commit hooks
setup:
    uv sync
    uv run pre-commit install

# --------------------------------------------------
# CLUSTER: QUALITY ASSURANCE (Testing & Linting)
# --------------------------------------------------

# Run all quality checks via Pre-commit (Linter, Formatter, Type-checker)
check:
    uv run pre-commit run --all-files

# Run Industrial Tests via Pytest (Sovereign Quality)
test:
    uv run pytest

# --------------------------------------------------
# CLUSTER: DOCUMENTATION (Sovereign Sanctuary Docs)
# --------------------------------------------------

# Start the MkDocs development server for live documentation
docs:
    uv run mkdocs serve

# Bundle all documentation into a single sovereign context file for LLM/Review
docs-bundle:
    @echo "Bundling documentation into all_docs.txt..."
    @find docs -name "*.md" -exec sh -c 'echo "========================================"; echo "FILE: {}"; echo "========================================"; cat {}; echo "\n\n"' \; > all_docs.txt
    @echo "Context saved to all_docs.txt"

# Format all Markdown files to maintain industrial standards
docs-format:
    @echo "Formatting all .md files..."
    find . -name "*.md" -not -path "./.venv/*" | xargs uv run mdformat
    @echo "All Markdown files are now sovereign and formatted."



# Bundle all Markdown files into a single text file
bundle md:
    @echo "Bundling all .md files..."
    @find projects -name "*.md" -exec sh -c 'echo "========================================"; echo "FILE: {}"; echo "========================================"; cat {}; echo "\n\n"' \; > all_docs.txt
    @echo "Done! Saved to all_docs.txt"

# --------------------------------------------------
# CLUSTER: BRAIN (ML Intelligence)
# --------------------------------------------------

# Start the MLflow tracking server (Local Registry)
mlflow:
    uv run mlflow server \
        --backend-store-uri sqlite:///mlflow.db \
        --default-artifact-root ./mlflow-artifacts \
        --host 127.0.0.1 \
        --port 5000

# --------------------------------------------------
# CLUSTER: SANITATION (Cleanup Operations)
# --------------------------------------------------

# Deep cleaning of site, reference, cache, and coverage artifacts
clean:
    @echo "Initiating Deep Purge..."
    rm -rf site/ reference/ .pytest_cache/ .hypothesis/ .coverage htmlcov
    rm -rf .ruff_cache .mypy_cache .pyright_cache
    rm -f all_docs.txt
    find . -type d -name "__pycache__" -exec rm -rf {} +
    @echo "Sanitation Complete. Sovereign Sanctuary is clean."




ruff fix:
    uv run ruff check src/ --fix
    uv run ruff format src/
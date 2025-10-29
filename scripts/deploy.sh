#!/bin/bash
# Multi-Environment Deployment Script for DevOps Simulator
# Handles both production (Kubernetes/Rolling Update) and development (Docker Compose) workflows.

set -e

# Default to production if DEPLOY_ENV is not set
DEPLOY_ENV=${DEPLOY_ENV:-production}

echo "====================================="
echo "DevOps Simulator - Deployment"
echo "====================================="

# Pre-deployment checks
echo "Running pre-deployment checks..."
if [ ! -f "config/app-config.yaml" ]; then
    echo "Error: Configuration file not found!"
    exit 1
fi

# --- PRODUCTION DEPLOYMENT LOGIC (from HEAD) ---
if [ "$DEPLOY_ENV" = "production" ]; then
    echo "--- Mode: Production Deployment ---"
    
    # Configuration
    DEPLOY_REGION="us-east-1"
    APP_PORT=8080
    
    echo "Environment: $DEPLOY_ENV"
    echo "Region: $DEPLOY_REGION"
    echo "Port: $APP_PORT"
    
    # Deploy application
    echo "Starting production deployment..."
    echo "Pulling latest Docker images..."
    # docker pull devops-simulator:latest

    echo "Rolling update strategy initiated..."
    # This line remains commented as per original production logic
    # kubectl rolling-update devops-simulator

    echo "Deployment completed successfully!"
    echo "Application available at: https://app.example.com"

# --- DEVELOPMENT DEPLOYMENT LOGIC (from dev) ---
elif [ "$DEPLOY_ENV" = "development" ]; then
    echo "--- Mode: Development Setup ---"
    
    # Configuration
    DEPLOY_MODE="docker-compose"
    APP_PORT=3000
    ENABLE_DEBUG=true

    echo "Environment: $DEPLOY_ENV"
    echo "Mode: $DEPLOY_MODE"
    echo "Port: $APP_PORT"
    echo "Debug: $ENABLE_DEBUG"
    
    # Development steps
    echo "Installing dependencies..."
    npm install

    echo "Running tests..."
    npm test

    # Deploy application
    echo "Starting development deployment..."
    echo "Using Docker Compose..."
    docker-compose up -d

    # Health check
    echo "Performing health check..."
    curl -f http://localhost:$APP_PORT/health || exit 1

    echo "Deployment completed successfully!"
    echo "Application available at: http://localhost:$APP_PORT"
    echo "Hot reload enabled - code changes will auto-refresh"

# --- ERROR HANDLING ---
else
    echo "Error: Unknown environment specified: $DEPLOY_ENV"
    exit 1
fi
    echo "Deployment completed successfully!"
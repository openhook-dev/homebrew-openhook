# typed: false
# frozen_string_literal: true

class Openhook < Formula
  desc "Webhook relay service for AI agents - receive events from GitHub, Stripe, Linear"
  homepage "https://openhook.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/openhook-dev/openhook/releases/download/v#{version}/openhook_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_FOR_DARWIN_AMD64"
    end

    on_arm do
      url "https://github.com/openhook-dev/openhook/releases/download/v#{version}/openhook_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_FOR_DARWIN_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/openhook-dev/openhook/releases/download/v#{version}/openhook_#{version}_linux_amd64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_FOR_LINUX_AMD64"
    end

    on_arm do
      url "https://github.com/openhook-dev/openhook/releases/download/v#{version}/openhook_#{version}_linux_arm64.tar.gz"
      sha256 "REPLACE_WITH_SHA256_FOR_LINUX_ARM64"
    end
  end

  def install
    bin.install "openhook"
  end

  test do
    assert_match "openhook", shell_output("#{bin}/openhook --help")
  end
end

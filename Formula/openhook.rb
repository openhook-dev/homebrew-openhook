# typed: false
# frozen_string_literal: true

class Openhook < Formula
  desc "Webhook relay service for AI agents - receive events from GitHub, Stripe, Linear"
  homepage "https://openhook.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/openhook-dev/openhook-cli/releases/download/v0.1.0/openhook_0.1.0_darwin_amd64.tar.gz"
      sha256 "095f858967d56bae172c8b3f0ba68663980284c7863794c07f93b4473aa4a66e"
    end
    if Hardware::CPU.arm?
      url "https://github.com/openhook-dev/openhook-cli/releases/download/v0.1.0/openhook_0.1.0_darwin_arm64.tar.gz"
      sha256 "1209c32522084edd41edde6b0dec67b3d4b241a675dd4e6fe9155ce931c244ae"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/openhook-dev/openhook-cli/releases/download/v0.1.0/openhook_0.1.0_linux_amd64.tar.gz"
      sha256 "e90472ffb2dfcb55cc106c392633d692f72f979cb3b5ba48bf365c792731ff0e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openhook-dev/openhook-cli/releases/download/v0.1.0/openhook_0.1.0_linux_arm64.tar.gz"
      sha256 "e77a0ca8b5155f4fc0a827ab132e94bed0164ba74c915e53b43a4f4b234358f0"
    end
  end

  def install
    bin.install "openhook"
  end

  test do
    system "#{bin}/openhook", "--help"
  end
end

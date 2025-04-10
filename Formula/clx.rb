# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clx < Formula
  desc "Generate Kubernetes Bill of Materials for a Kubernetes cluster."
  homepage "https://github.com/guidewire-oss"
  version "0.0.1"
  license "Apache 2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/guidewire-oss/cluster-codex/releases/download/v0.0.1/clx_0.0.1_darwin_amd64.tar.gz"
      sha256 "bf88f184be5ecc48de13e0b8c5d93b101fa272ac0d9b89a896b58d41a84a12fb"

      def install
        bin.install "clx"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/guidewire-oss/cluster-codex/releases/download/v0.0.1/clx_0.0.1_darwin_arm64.tar.gz"
      sha256 "b1e86da6caf65aaf67b9215d092805ecfda2e2e40b41f452f7c3f279f46c2578"

      def install
        bin.install "clx"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guidewire-oss/cluster-codex/releases/download/v0.0.1/clx_0.0.1_linux_amd64.tar.gz"
        sha256 "2dba00ce44057c7f36450b0c0ebde96dcbcf78b2106ccb6a7854f79218e6c3a9"

        def install
          bin.install "clx"
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/guidewire-oss/cluster-codex/releases/download/v0.0.1/clx_0.0.1_linux_arm.tar.gz"
        sha256 "69f26c0cb070793b894f56b4adb1b60b2163fb9b6b5881bfe548be2b8f1b6fb4"

        def install
          bin.install "clx"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/guidewire-oss/cluster-codex/releases/download/v0.0.1/clx_0.0.1_linux_arm64.tar.gz"
        sha256 "c40d71e9914f6805005d0e16850a0f50a3b1076356042264bc74ca0aa38fb1e7"

        def install
          bin.install "clx"
        end
      end
    end
  end

  test do
    system "#{bin}/clx", "version"
  end
end

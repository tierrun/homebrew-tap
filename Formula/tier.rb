# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tier < Formula
  desc "The Tier CLI"
  homepage "https://tier.run/"
  version "0.3.5"
  license "BSD-3-Clause"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tierrun/tier/releases/download/v0.3.5/tier_0.3.5_macOS_arm64.tar.gz"
      sha256 "a3160785f1d85456424d4c8ca7a1cf546f6a30af7d6db501f95c473a162ddb3e"

      def install
        bin.install "tier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tierrun/tier/releases/download/v0.3.5/tier_0.3.5_macOS_amd64.tar.gz"
      sha256 "e3ec19c7f95f73efb878bb2fd4cfc5bb3be9143bd5b5e60f4c978ac9b6e27b37"

      def install
        bin.install "tier"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tierrun/tier/releases/download/v0.3.5/tier_0.3.5_linux_arm64.tar.gz"
      sha256 "001cc77532e98104395319e99ede85fad77fc9d5ebff9a32c0afd1e35c85b31e"

      def install
        bin.install "tier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tierrun/tier/releases/download/v0.3.5/tier_0.3.5_linux_amd64.tar.gz"
      sha256 "7ded469b140155830805db077078a7111ad19092868f724e1f424c2956306627"

      def install
        bin.install "tier"
      end
    end
  end

  test do
    system "#{bin}/tier --version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tier < Formula
  desc "Software to create fast and easy drum rolls."
  homepage "https://tier.run"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tierrun/tier/releases/download/v0.3.3/tier_0.3.3_Darwin_arm64.tar.gz"
      sha256 "cfe02eb9a71757f5f574477f0fc4e424621679577f8d2a9f668128aa69d9a33b"

      def install
        bin.install "tier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tierrun/tier/releases/download/v0.3.3/tier_0.3.3_Darwin_x86_64.tar.gz"
      sha256 "238da3e8ad79fefcefc89a984ba632da66a9ccecdd3affa18549ebc7a651b418"

      def install
        bin.install "tier"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/tierrun/tier/releases/download/v0.3.3/tier_0.3.3_Linux_arm64.tar.gz"
      sha256 "28cc085d3e27458a90702da3d468a48fa042658cd56b4e5c98912efab1bd073a"

      def install
        bin.install "tier"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/tierrun/tier/releases/download/v0.3.3/tier_0.3.3_Linux_x86_64.tar.gz"
      sha256 "9bef6b62a6e63d774a8f12ae7de38af76871f4540e2b05e5c5813353c5189797"

      def install
        bin.install "tier"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary
    EOS
  end

  test do
    system "#{bin}/tier version"
  end
end

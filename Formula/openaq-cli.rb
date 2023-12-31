# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class OpenaqCli < Formula
  desc "Official Command Line Interface for OpenAQ. Get your API key here -> https://api.openaq.org/register"
  homepage "https://github.com/openaq/openaq-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openaq/openaq-cli/releases/download/v0.5.0/openaq-cli_0.5.0_darwin_arm64.tar.gz"
      sha256 "8d73a82236192ee784d806c0bcc4b351be877823e7a0fb93b3a982030898d77d"

      def install
        bin.install "openaq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openaq/openaq-cli/releases/download/v0.5.0/openaq-cli_0.5.0_darwin_amd64.tar.gz"
      sha256 "fa11b88aea18b6a46057d8915321cdcc85ca3a7caf2ca808caed70e8bcb703d0"

      def install
        bin.install "openaq"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/openaq/openaq-cli/releases/download/v0.5.0/openaq-cli_0.5.0_linux_arm64.tar.gz"
      sha256 "6ca9023be8bd400f867102c337d9d1139ca44967ecb0ffc09a0e61f70c8c56ed"

      def install
        bin.install "openaq"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/openaq/openaq-cli/releases/download/v0.5.0/openaq-cli_0.5.0_linux_amd64.tar.gz"
      sha256 "279abc9efc7bfde438ef57bf74638c2e22d6e5d2fcec267d30311900dd8ef74e"

      def install
        bin.install "openaq"
      end
    end
  end

  test do
    system "#{bin}/openaq-cli -v"
  end
end

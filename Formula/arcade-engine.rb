# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class ArcadeEngine < Formula
  desc "Engine for Arcade"
  homepage "https://arcade.dev/"
  version "1.2.21"

  on_macos do
    if Hardware::CPU.intel?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.21/arcade-engine_1.2.21_Darwin_x86_64.tar.gz"
      sha256 "187fea622c90d79eac44938f88cda31c301ed1979a70848a9fedc79cdb274c33"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
    if Hardware::CPU.arm?
      url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.21/arcade-engine_1.2.21_Darwin_arm64.tar.gz"
      sha256 "4f80edf783508e45fffaf5d95152da601fe59edb6ecee59bdf5160dc12bb01b5"

      def install
        bin.install "arcade-engine"
        pkgetc.install 'engine.yaml'
        pkgetc.install 'engine.env'
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.21/arcade-engine_1.2.21_Linux_x86_64.tar.gz"
        sha256 "15a519e1f047e6273abc8a837a6d3744b28b4618282296a2aaf1ff80d5df06c2"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://arcadeai-releases.s3.amazonaws.com/macos/v1.2.21/arcade-engine_1.2.21_Linux_arm64.tar.gz"
        sha256 "739eaa631a55a31cb3573a3a515ee8e11d4b09f8f672490e5baf93f3bfc51a50"

        def install
          bin.install "arcade-engine"
          pkgetc.install 'engine.yaml'
          pkgetc.install 'engine.env'
        end
      end
    end
  end

  head "https://github.com/ArcadeAI/homebrew-tap.git"
end

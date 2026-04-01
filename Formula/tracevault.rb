class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/softwaremill/tracevault"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.1/tracevault-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "01e788a210550680177ee492f18f144ba71117b26306f959a430267400863481"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.1/tracevault-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "93ab5f001f13187297d78b83376f55b3109a1ca21d40d8248a6bb6b700d3d9b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.1/tracevault-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e385167c0c452348ca6cd9432b468df4b33175ca1bf1d98930f1df62919689b"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.1/tracevault-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b8345ae44bbf635b3b96a7c9388ea909f0e21cec1835a110659699e9bd78110d"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end

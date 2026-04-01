class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/softwaremill/tracevault"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v#{version}/tracevault-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v#{version}/tracevault-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v#{version}/tracevault-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v#{version}/tracevault-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end

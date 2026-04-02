class Tracevault < Formula
  desc "CLI tool for AI code tracing and attribution"
  homepage "https://github.com/softwaremill/tracevault"
  version "0.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.2/tracevault-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "7f0eb7642c02bc4d559686fa9700d56638db1d79e478ea6c90c4cb7999335cb2"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.2/tracevault-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "20d2a3b16b3d0d7f348d9e2c9a5fd91e20330bf400879d1535ba6bb91056746e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.2/tracevault-v0.6.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "169ec98e40ea818507df5831500a4c948fdf612ebe7ca870a800ccd9ffbad407"
    end
    on_intel do
      url "https://github.com/softwaremill/tracevault/releases/download/v0.6.2/tracevault-v0.6.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6101589a2c03a8742dd6d383f36c175baed94ade8a8975e2f67ea97e3065a2a"
    end
  end

  def install
    bin.install "tracevault"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tracevault --version")
  end
end

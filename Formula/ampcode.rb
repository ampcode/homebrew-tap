class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769616710-g25196f"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769616710-g25196f/amp-darwin-arm64"
      sha256 "8b05c5a6bf0b4539b3579bd3bb9f47a6f8243537836e88df6ee90a6dfbaaa9c9"
    else
      url "/0.0.1769616710-g25196f/amp-darwin-x64"
      sha256 "3573ba05b4192d871ec353cdbcf490ec76a62102adf903ab1366edf252e85aa5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769616710-g25196f/amp-linux-arm64"
      sha256 "a0651e5b399c59a1f206dc8a151f3ccb5582cdc0a3ae4ddbfa3906535fecadbb"
    else
      url "/0.0.1769616710-g25196f/amp-linux-x64"
      sha256 "370f08154898fa5cb4cf822312edaae3c5b521af20faac71c4c318fb67daa5df"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

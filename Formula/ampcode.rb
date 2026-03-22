class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774180925-g440f16"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774180925-g440f16/amp-darwin-arm64"
      sha256 "70ab48bb5367abda0c952144f841eff21e009ceccd3983e0a6185ad1ee8194a7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774180925-g440f16/amp-darwin-x64"
      sha256 "2684f5919c32d1c03c336963d4060b9c06fe99cfb587420ef8eb6135478393ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774180925-g440f16/amp-linux-arm64"
      sha256 "1454966fa4abe51bc4feb7765364c8eb30ab9367ec5ba861f798f999ad3a055a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774180925-g440f16/amp-linux-x64"
      sha256 "5d08475c7e942903a462a6075b64e94c4fda0621e2f8b6ca2ec2c23d70b18635"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

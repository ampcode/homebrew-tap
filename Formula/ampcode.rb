class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770700009-g3c4c88"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770700009-g3c4c88/amp-darwin-arm64"
      sha256 "2366b9811aa268bcc552217d733f51f6fe9adfc3bfd34f314011c951b900ecef"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770700009-g3c4c88/amp-darwin-x64"
      sha256 "1c6f5ebd66158c7d109bcc3dfb95df5662d9dbd6c868337a16d2c24ea52e6b57"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770700009-g3c4c88/amp-linux-arm64"
      sha256 "db361997970ddc2fe3940e0f97898276ad480a7e8b9dbcd27406e3dccc246574"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770700009-g3c4c88/amp-linux-x64"
      sha256 "0549618acd26ae30953012a5c0a1c98c7c2afa6b32e349063ac8431bc3b136af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

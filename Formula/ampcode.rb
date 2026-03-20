class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773965070-g233ce5"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773965070-g233ce5/amp-darwin-arm64"
      sha256 "69e55f5d2e108515fa076264972e6f84bd5910c7d161228307f3afd89fbb91e5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773965070-g233ce5/amp-darwin-x64"
      sha256 "1672c20b5b197b8a7fbf21098d4b8568c7d8b71534852e9b1c6f7248f14de877"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773965070-g233ce5/amp-linux-arm64"
      sha256 "efae4291996061fc5ef58c87daa16a1484487a092f6280087c873dbdbe9c0cb0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773965070-g233ce5/amp-linux-x64"
      sha256 "effb14b418ddd6752b17eaf9e406f9f6ac1fde3a77f6da7fea38628aa2d9975e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773187348-g362aee"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773187348-g362aee/amp-darwin-arm64"
      sha256 "a4e86787dbc84b2a3b0fece444e55a06a95f878270a7bfe933f656e0873eaf03"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773187348-g362aee/amp-darwin-x64"
      sha256 "45675eb456beda0779dd0e52dccc521c1e8259582994d422f98fa6707a6a5d56"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773187348-g362aee/amp-linux-arm64"
      sha256 "1570bc0962aa79978082976e43018b1721fa7e6b933dd2a4cd920ba6c2287617"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773187348-g362aee/amp-linux-x64"
      sha256 "37ef65f9164839bddb170d87750eb27793e77b7923e900cd2bc73927c41ecb9e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

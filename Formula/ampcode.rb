class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769395418-gb592e9"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769395418-gb592e9/amp-darwin-arm64"
      sha256 "68cc05bbc2b10952e364ddc2c4192d215090de3665f5a1ff36f905f9ed53327a"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769395418-gb592e9/amp-darwin-x64"
      sha256 "d09d7c8d43a3bfef912742b6ca0ec6166e2898cd533a57f675a493b8edee2332"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769395418-gb592e9/amp-linux-arm64"
      sha256 "ee328b182aadcb761745bc3dc59e442a94d54a6a74d1429cc2fa62767c1d7196"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769395418-gb592e9/amp-linux-x64"
      sha256 "2f748d91817d96d61c30413be914423c5b33c87b9d04119580e59dfe25e4148b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

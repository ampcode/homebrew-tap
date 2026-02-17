class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771358819-g9e835e"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771358819-g9e835e/amp-darwin-arm64"
      sha256 "681714dedb5ff3f7363c421ac4b0f27bf10b4bbec01d466b27bb1969dd56f1a7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771358819-g9e835e/amp-darwin-x64"
      sha256 "890d34602dce807dde289ed6c05f719769500f84d9d89389a397ce168a655999"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771358819-g9e835e/amp-linux-arm64"
      sha256 "6889f8f5e9295992e6f20a5cbd1d4b0c4ef36f0eabde05ff59ba6e4eadc59f1c"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771358819-g9e835e/amp-linux-x64"
      sha256 "73c05d86c342f368cbab868042aa6ed6a12be69fa0a8b0baf60497a588d9a2b6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

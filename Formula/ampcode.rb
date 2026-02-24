class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771944252-g98fbac"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771944252-g98fbac/amp-darwin-arm64"
      sha256 "cdab4da69f9dc49ba249759118593fc8a21892a0353eb8d01d98d2e40a2656f3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771944252-g98fbac/amp-darwin-x64"
      sha256 "2a37d5cf2172ec502a330605d7005ad84a837f7bbbe89468181a809b2242e1d0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771944252-g98fbac/amp-linux-arm64"
      sha256 "d6672551b967e5d8db81ed12d33b0adc351aa8de508b18fe1f0f85bbcd7b40b7"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771944252-g98fbac/amp-linux-x64"
      sha256 "5a849cfd8fc82817c643d2f6713a8d7fa3defac30920f08c7af496f9aa749a2a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end

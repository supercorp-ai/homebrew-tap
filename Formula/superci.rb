# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.5.tgz"
      sha256 "01f15f162cb3dbb5d3909718a65d5894045c5b5f2078cb6d0bba2c8e9961ce49"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.5.tgz"
      sha256 "5af8ec632cdbba74b6484f9b0224d6f51fcebadc348b1f07e7e847b1d9f909e5"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.5.tgz"
      sha256 "5c8834b8f3441fa565673a8c315c99012cfcad25f4f0f3b120ffb9b3c6b1d8e7"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.5.tgz"
      sha256 "6561b1759a2e244ac0ea4f2e52e18fccd0870f6697a6ea6c8f115e06c51a7f1f"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end

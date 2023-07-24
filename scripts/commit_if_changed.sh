git add src/ --all
DIFF=$(git diff --cached src/)
if [ "$DIFF" ]
then
	git commit -m "Automated Verilog generation"
	git push
fi
